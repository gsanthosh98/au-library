<?php
require_once 'dbconfig.php';
$password2 = $_POST['password1'];
$roll2 = $_POST['roll1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

  $sql = "SELECT COUNT(*) from user where reg='$roll2' and password='$password2'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT reg,name from user where reg='$roll2' and password='$password2'") as $row)
        {
          $reg = $row['reg'];
          $name = $row['name'];
          session_start();
          $_SESSION["reg"]=$reg;
          $_SESSION["name"]=$name;
          echo "Logged in as ";
          echo $_SESSION["name"];
          echo " with roll number ";
          echo $reg;

          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        }
        /* No rows matched -- do something else */
        else {
        echo "User name / password is incorrect.";

        }
        }
        else {
        echo "Submission failed. Try later.";
        }


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
