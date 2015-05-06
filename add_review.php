<?php
	include "config.php";
	function get_Place($place_id)
	{
		$q = "SELECT * FROM places WHERE id = ".$place_id;
		$query = mysql_query($q);
		while($row = mysql_fetch_array($query))
		{
			return $row;
		}
	}
	if(isset($_POST['user_id']) && isset($_POST['name']) && isset($_POST['body']) && isset($_POST['place_id']) && isset($_POST['rating']))
	{
		connect();
		$q = "INSERT INTO reviews(name, body, place_id, rating) VALUES('".$_POST['name']."','".$_POST['body']."','".$_POST['place_id']."', ".$_POST['rating'].")";
		mysql_query($q);
		$data = get_Place($_POST['place_id']);
		$q = "INSERT INTO likes(user_id, place_id, point, longitude, latitude, type1) VALUES('".$_POST['user_id']."', '".$_POST['place_id']."', '".$_POST['rating']."','".$data['longitude']."', '".$data['latitude']."', '".$data['type']."')";
		mysql_query($q) or die(mysql_error());
	}
?>