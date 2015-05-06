<?php
	include "config.php";
	connect();
	if(isset($_GET['place_id']))
	{
		$q = "SELECT * FROM reviews WHERE place_id = ".$_GET['place_id'];
		$query = mysql_query($q);
		$data = [];
		while($row = mysql_fetch_array($query))
		{
			array_push($data, $row);
		}
		echo json_encode($data);
	}
?>