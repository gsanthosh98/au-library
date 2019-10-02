<?php
session_start();
require_once 'dbconfig.php';
$roll2 = $_POST['roll1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;
  $user='user';

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


  $sql = "SELECT * FROM $user WHERE reg='$roll2'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT name,course,dept,year,mail,phone FROM $user WHERE reg='$roll2'") as $row)
        {

          echo '<tbody>';
          echo "<tr><th scope='row'>";

          $name2 = $row['name'];
          echo $name2;
          echo "</td><td>";
          $mail2 = $row['mail'];
          echo $mail2;
          echo "</td><td>";
          $phone2 = $row['phone'];
          echo $phone2;
          echo "</td><td>";
          $dept2 = $row['dept'];
          echo $dept2;
          echo "</th><td>";
          $course2 = $row['course'];
          echo $course2;
          echo "</td><td>";
          $year2 = $row['year'];
          echo $year2;

          echo "</td></tr></tbody>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        }
        /* No rows matched -- do something else */
        else {
        echo "No entries matched";

        }
        }
        else {
        }


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
