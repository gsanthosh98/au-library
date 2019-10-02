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
  $sql = "SELECT value1 from config where key1='borrow'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT value1 from config where key1='borrow'") as $row)
        {
          $borrowlimit=$row['value1'];
          $borrowlimit=$borrowlimit-1;

        }
        }
        else {
          throw new Exception("Check your internet connection.");
        }
        }
  $sql = "SELECT COUNT(*) FROM issued WHERE userid = '$userid'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT COUNT(*) as temp FROM issued WHERE userid = '$userid'") as $row)
        {
            $bookscount=$row['temp'];
            if($bookscount > $borrowlimit)
            {
                throw new Exception("Maximum book borrow limit exceeded.");
            }
        }

        }
        }

  $sql = "SELECT * FROM book WHERE isbn = '$book2' and remaining > 0";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {

        }
        else {
          throw new Exception("Book not available.");
        }
        }

  $sql = "SELECT * FROM book WHERE isbn = '$book2' and reference='no'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {

        }
        else {
          throw new Exception("Book is a refernece copy.");
        }
        }
  $count = $conn->exec("INSERT INTO issued (userid,bookid,issuedate,returndate) VALUES ('$userid', '$bookid', (SELECT CURDATE()), (SELECT ADDDATE(CURDATE(),(SELECT value1 FROM config WHERE key1='returndays'))))");
  echo "Book has been issued to the student.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
