<?php
use PHPUnit\Framework\TestCase;
 
class FetchTests extends TestCase {
	public function test_url() {
        $IP = $_SERVER['argv'][1];
	    for($i = 0 ; $i < 12 ; $i++) {
    	        $data = file_get_contents("http://{$IP}/demo.php");
    	        if(strstr($data, "prof")) {
                    break;
                }
                sleep(10);
             }
    	     $this->assertContains('prof', $data);
  	}
}
?>

