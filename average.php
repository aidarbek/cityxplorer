<?php 
	include "config.php";
	connect();
	if(isset($_GET['place_id']))
	{
		$q = "SELECT * FROM likes WHERE place_id=".$_GET['place_id'];
		$result = mysql_query($q) or die(mysql_error());
		// Print out result
		while($row = mysql_fetch_array($result))
		{
			echo "Total ". $row['type']. " = $". $row['SUM(price)'];
			echo "<br />";
		}
	}
?>