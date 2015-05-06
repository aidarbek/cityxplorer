<?php
	include "config.php";
	connect();
	if(isset($_GET['user_id']))
	{
		$q = "SELECT * FROM bookmarks WHERE user_id = ".$_GET['user_id'];
		$query = mysql_query($q);
		$data = [];
		while($row = mysql_fetch_array($query))
		{
			array_push($data, $row);
		}
		echo json_encode($data);
	}
?>