<?php
$capitals = array("Turkey" => "Istanbul");
$capitals["Germany"] = "Berlin";
foo($capitals);
unset($capitals["Germany"]);
foo($capitals);
$capitals["Turkey"] = "Ankara";
foo($capitals);
echo isset($capitals["Turkey"]). "\n";
echo in_array("Ankara", $capitals). "\n";
foo($capitals);


function foo($ar) {
	 foreach($ar as $x => $xValue) {
	        echo "Key: " .$x. ", Value: " .$xValue. "\n";
	}
	echo "-----\n";
}
?>
