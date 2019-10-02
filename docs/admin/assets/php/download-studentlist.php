<?php
session_start();
require_once 'dbconfig.php';
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

    if(isset($_SESSION["admin"]))
    {$name=$_SESSION["admin"];}
    else
    {throw new Exception("<b>You must log in.</b>");}
    $sql = "SELECT COUNT(*) from admin where id='$name'";
    if ($res = $conn->query($sql))
    {
    if ($res->fetchColumn() > 0){}
    else{throw new Exception("<b>You must log in.</b>");}
    }
    else{throw new Exception("<b>You must log in.</b>");}

      $sql = "SELECT user.id,user.reg,user.name,user.course,user.dept,user.year,user.mail,user.phone FROM user";
      //Prepare our SQL query.
      $statement = $conn->prepare($sql);
      //Executre our SQL query.
      $statement->execute();
      //Fetch all of the rows from our MySQL table.
      $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
      //Get the column names.
      $columnNames = array();
      if(!empty($rows)){
          //We only need to loop through the first row of our result
          //in order to collate the column names.
          $firstRow = $rows[0];
          foreach($firstRow as $colName => $val){
              $columnNames[] = $colName;
          }
      }
      //Setup the filename that our CSV will have when it is downloaded.
      $fileName = 'students.csv';
      ob_clean();
      header("Pragma: no-cache");
      header('Content-Type: application/octet-stream');
      header('Content-Disposition: attachment;filename=students.csv');

      //Open up a file pointer
      $fp = fopen('php://output', 'w');

      //Start off by writing the column names to the file.
      fputcsv($fp, $columnNames);

      //Then, loop through the rows and write them to the CSV file.
      foreach ($rows as $row) {
          fputcsv($fp, $row);
}
//Close the file pointer.
fclose($fp);
} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
