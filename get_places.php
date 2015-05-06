<?php
	//header('Content-Type: application/pdf');

	include "config.php";
	connect();
	if(isset($_GET['type']))
	{
		$q = "SELECT * FROM places WHERE type = '".$_GET['type']."'";
		$query = mysql_query($q);
		$data = [];
		while($row = mysql_fetch_array($query))
		{
			array_push($data, $row);
		}
		echo json_encode($data);
	}
?>