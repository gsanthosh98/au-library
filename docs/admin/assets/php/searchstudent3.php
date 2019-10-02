<?php
session_start();
require_once 'dbconfig.php';
$roll2 = $_POST['roll1'];
$name2 = $_POST['name1'];

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


  $sql = "SELECT * FROM book INNER JOIN issued ON book.id = issued.bookid AND issued.bookid in (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$roll2' and name LIKE '%$name2%'))";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT book.isbn,book.name,issued.returndate,issued.fine FROM book INNER JOIN issued ON book.id = issued.bookid AND issued.bookid in (SELECT bookid FROM issued WHERE userid = (SELECT id from user where reg='$roll2' and name LIKE '%$name2%'))") as $row)
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
          $temp2 = $row['returndate'];
          echo $temp2;
          echo "</td><td>";
          $remaining2 = $row['fine'];
          echo $remaining2;
          echo "</td></tr></tbody>";
          $count = $count+1;


          /*session is started if you don't write this line can't use $_Session  global variable*/
        }

        }
        /* No rows matched -- do something else */
        else {
        echo "No books have been borrowed.";

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
