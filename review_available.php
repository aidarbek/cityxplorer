<?php
	error_reporting(0);
	include "config.php";
	connect();
	if(isset($_GET['place_id']) && isset($_GET['user_id']))
	{
		$q = "SELECT * FROM likes WHERE place_id = ".$_GET['place_id']." AND user_id=".$_GET['user_id'];
		$query = mysql_query($q);
		$data["available"] = 1;
		while($row = mysql_fetch_array($query))
		{
			if(isset($row['id1']))
				$data["available"] = 0;
		}

		echo json_encode($data);
	}
?>