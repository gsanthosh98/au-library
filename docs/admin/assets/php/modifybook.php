<?php
session_start();
require_once 'dbconfig.php';
$bookid2 = $_POST['bookid1'];
$name2 = $_POST['name1'];
$author2 = $_POST['author1'];
$count2 = $_POST['count1'];
$publisher2 = $_POST['publisher1'];
$edition2 = $_POST['edition1'];
$price2 = $_POST['price1'];
$subject2 = $_POST['subject1'];
$department2 = $_POST['department1'];
$row2 = $_POST['row1'];




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

  $count = $conn->exec("UPDATE book SET name='$name2',author='$author2',reference='$count2',publisher='$publisher2',edition='$edition2',price='$price2',subject='$subject2',department='$department2',row='$row2' where isbn='$bookid2'");
  echo "Book has been modified.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
