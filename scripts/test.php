<?php
use PHPUnit\Framework\TestCase;
 
class FetchTests extends TestCase {
	public function test_url() {
   
	    for($i = 0 ; $i < 12 ; $i++) {
                echo ".";
    	        $data = @file_get_contents("http://localhost/pdo-demo.php");
    	        if(strstr($data, "prof")) {
         
                    break;
                }
                else{
                    echo $data;
                }
                sleep(10);
        }
    	$this->assertContains('prof', $data);
  	}
}
?>

