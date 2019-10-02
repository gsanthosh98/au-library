<?php
session_start();
require_once 'dbconfig.php';
$book2 = $_POST['book1'];
$student2 = $_POST['student1'];


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

  $sql = "SELECT id FROM book where isbn = '$book2'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT id FROM book where isbn = '$book2'") as $row)
        {
          $bookid=$row['id'];
        }
        }
        else {
          throw new Exception("Wrong book id.");
        }
        }
  $sql = "SELECT id FROM user where reg = '$student2'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT id FROM user where reg = '$student2'") as $row)
        {
          $userid=$row['id'];
        }
        }
        else {
          throw new Exception("Wrong student register number.");
        }
        }
  $count = $conn->exec("DELETE FROM issued WHERE userid='$userid' AND bookid='$bookid'");
  echo "Book has been received from the student.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
