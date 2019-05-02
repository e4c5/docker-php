<?php

for($i = 0 ; $i < 12 ; $i++) {

        $data = @file_get_contents("http://localhost/pdo-demo.php");
        if(strstr($data, "prof")) {
 			fwrite(STDERR, $data);
            exit(0);
        }
        else{
            fwrite(STDERR, $data);
        }
        sleep(10);
}

exit(0);
?>

