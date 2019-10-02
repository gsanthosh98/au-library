<?php
session_start();
require_once 'dbconfig.php';
$book2 = $_POST['book1'];
$author2 = $_POST['author1'];
$code2 = $_POST['code1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;

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

  $sql = "SELECT COUNT(*) from book where name LIKE '%$book2%' and isbn LIKE '%$code2%'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT isbn,name,author,count,remaining,edition,price,subject,reference,department,row from book where name LIKE '%$book2%' and isbn LIKE '%$code2%'") as $row)
        {

          echo '<tbody>';
          echo "<tr><th scope='row'>";
          echo $count;
          echo "</th><td>";
          $isbn2 = $row['isbn'];
          echo $isbn2;
          echo "</td><td>";
          $name2 = $row['name'];
          echo $name2;
          echo "</td><td>";
          $author2 = $row['author'];
          echo $author2;
          echo "</td><td>";
          $count2 = $row['count'];
          echo $count2;
          echo "</td><td>";
          $remaining2 = $row['remaining'];
          echo $remaining2;
          echo "</td><td>";
          $author2 = $row['edition'];
          echo $author2;
          echo "</td><td>";
          $author2 = $row['price'];
          echo $author2;
          echo "</td><td>";
          $author2 = $row['subject'];
          echo $author2;
          echo "</td><td>";
          $author2 = $row['reference'];
          echo $author2;
          echo "</td><td>";
          $author2 = $row['department'];
          echo $author2;
          echo "</td><td>";
          $author2 = $row['row'];
          echo $author2;
          echo "</td></tr></tbody>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        }
        /* No rows matched -- do something else */
        else {
        echo "No books matched";

        }
        }
        else {
        echo "";
        }


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
