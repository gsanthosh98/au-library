<?php
require_once 'dbconfig.php';
$password2 = $_POST['password1'];
$mail2 = $_POST['mail1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

  $sql = "SELECT COUNT(*) from admin where email='$mail2' and password='$password2'";
<<<<<<< HEAD:docs/admin/assets/php/loginadmin.php
=======

>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819:docs/admin/assets/php/loginuser.php
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
<<<<<<< HEAD:docs/admin/assets/php/loginadmin.php
        foreach ($conn->query("SELECT email from admin where email='$mail2' and password='$password2'") as $row)
        {
          $mail = $row['email'];
          session_start();
          $_SESSION["admin"]=$mail;
=======
        foreach ($conn->query("SELECT id from admin where email='$mail2' and password='$password2'") as $row)
        {
          $admin = $row['id'];
          session_start();
          $_SESSION["admin"]=$admin;
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819:docs/admin/assets/php/loginuser.php
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


<<<<<<< HEAD:docs/admin/assets/php/loginadmin.php
} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
=======
} catch(Exception $e) {
  echo  $e->getMessage();
>>>>>>> 5ab69aa5475e9f79cc66573599e871513a096819:docs/admin/assets/php/loginuser.php
}
 // Connection Closed
?>
