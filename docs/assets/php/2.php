<?php
require_once 'dbconfig.php';
$book2 = $_POST['book1'];
$author2 = $_POST['author1'];
$code2 = $_POST['code1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;

  $sql = "SELECT COUNT(*) from book where author LIKE '%$author2%'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT isbn,name,author,remaining from book where author LIKE '%$author2%'") as $row)
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
          $remaining2 = $row['remaining'];
          $availability = 'Yes';
          if($remaining2==0)
          {$availability='No';}
          echo $availability;
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


} catch (PDOException $pe) {
    die("Could not connect to the server. Please check your internet connection.");
}
 // Connection Closed
?>
