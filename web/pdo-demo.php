<?php
$dbh = new PDO("mysql:host=mysql;dbname=demo","root","eip2weeYee3gungo9Uphaev4aXo4ePh8");


$result = $dbh->query("SELECT * FROM users");
if($result) {
    while( $row = $result->fetch() ) {
       echo "<p>{$row['username']}</p>";

    }
}
else {
   echo print_r($dbh->errorInfo());
}

?>
