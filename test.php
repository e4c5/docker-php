<?php
use PHPUnit\Framework\TestCase;
 
class FetchTests extends TestCase {
	public function test_url() {
	    for($i = 0 ; $i < 12 ; $i++) {
    	        $data = file_get_contents("http://localhost/demo.php");
    	        if(strstr($data, "prof")) {
                    break;
                }
                sleep(10);
             }
    	     $this->assertContains('prof', $data);
  	}
}
?>
