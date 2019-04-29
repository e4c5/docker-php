<?php
use PHPUnit\Framework\TestCase;
 
class FetchTests extends TestCase {
	public function test_url() {
    	$data = file_get_contents("http://localhost/demo.php");
    	
    	$this->assertContains('prof', $data);
  	}
}
?>
