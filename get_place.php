<?php
	include "config.php";
	connect();
	if(isset($_GET['id']))
	{
		$q = "SELECT * FROM places WHERE id = '".$_GET['id']."'";
		$query = mysql_query($q);
		$data = [];
		while($row = mysql_fetch_array($query))
		{
			$data = $row;
			//array_push($data, $row);
		}
		$q = "SELECT * FROM likes WHERE place_id=".$_GET['id'];
		$query = mysql_query($q);
		$data['average'] = 0;
		$sum = 0;
		$cnt = 0;
		while($row = mysql_fetch_array($query))
		{
        	$cnt++;
        	$sum += $row['point'];  
		}
		if($cnt)
			$data['average'] = (int)($sum / $cnt);
		else
			$data['average'] = "Not rated yet";
		echo json_encode($data);
	}
?>