<?php
require_once 'dbconfig.php';
$password2 = $_POST['password1'];
$roll2 = $_POST['roll1'];
$book2 = $_POST['book1'];

try {

  $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
  $count = 1;

  $sql = "SELECT COUNT(*) from book where name LIKE '%$book2%'";
  if ($res = $conn->query($sql)) {

      /* Check the number of rows that match the SELECT statement */
      if ($res->fetchColumn() > 0) {
        foreach ($conn->query("SELECT isbn,name,author,remaining from book where name LIKE '%$book2%'") as $row)
        {

          echo '<thead class="text-uppercase bg-primary"><tr class="text-white"><th scope="col">S. No</th><th scope="col">Book ID</th><th scope="col">Name</th><th scope="col">Author</th><th scope="col">Availability</th></tr></thead><tbody>';
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
        echo "";

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
