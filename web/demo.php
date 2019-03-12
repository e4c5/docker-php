<?php
$mysqli = new mysqli("mysql","root","eip2weeYee3gungo9Uphaev4aXo4ePh8", "demo");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

$result = $mysqli->query("SELECT * FROM users");
if($result) {
    while( $row = $result->fetch_assoc() ) {
       echo "<p>{$row['username']}</p>";

    }
}
else {
   echo $mysqli->error;
}

?>
