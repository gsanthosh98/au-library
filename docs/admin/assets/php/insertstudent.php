<?php
session_start();
require_once 'dbconfig.php';
$name2 = $_POST['name1'];
$reg2 = $_POST['reg1'];
$email2 = $_POST['email1'];
$phone2 = $_POST['phone1'];
$password2 = $_POST['password1'];
$department2 = $_POST['department1'];
$course2 = $_POST['course1'];
$year2 = $_POST['year1'];


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

  $sql = "SELECT id FROM user where reg = '$reg2'";
  if ($res = $conn->query($sql)) {
      if ($res->fetchColumn() > 0) {
          throw new Exception("Student roll number has already been taken.");
        }
        }

  $password2 = password_hash($password2, PASSWORD_BCRYPT);


  $count = $conn->exec("INSERT INTO user (reg,name,password,course,dept,year,mail,phone) VALUES ('$reg2','$name2','$password2','$course2','$department2','$year2','$email2','$phone2')");
  echo "Student record has been inserted.";


} catch(Exception $e) {
  echo  $e->getMessage();
}
 // Connection Closed
?>
