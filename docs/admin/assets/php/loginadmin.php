<?php
require_once 'dbconfig.php';
$password2 = $_POST['password1'];
$mail2 = $_POST['mail1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

  $sql = "SELECT COUNT(*) from admin where email='$mail2' and password='$password2'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT email from admin where email='$mail2' and password='$password2'") as $row)
        {
          $mail = $row['email'];
          session_start();
          $_SESSION["admin"]=$mail;
          echo "Logged in as ";
          echo $_SESSION["admin"];

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
