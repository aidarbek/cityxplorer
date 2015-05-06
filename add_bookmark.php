<?php
	include "config.php";

	function check1($user, $place)
	{
		$q = "SELECT * FROM bookmarks WHERE user_id = ".$user." AND place_id = ".$place;
		$query = mysql_query($q) or die(mysql_error());
		echo $q;
		while($row = mysql_fetch_array($query))
		{
			if(isset($row['id']) || $user == 0) return 0;
		}
		return 1;
	}
	if(isset($_POST['user_id']) && isset($_POST['name']) && isset($_POST['address']) && isset($_POST['place_id']))
	{
		connect();

		if(check1($_POST['user_id'], $_POST['place_id']))
		{	
			echo $_POST['user_id']." ".$_POST['place_id'];
			$q = "INSERT INTO bookmarks(name, address, place_id, user_id) VALUES('".$_POST['name']."','".$_POST['address']."','".$_POST['place_id']."', ".$_POST['user_id'].")";
			mysql_query($q);
		}
	}
?>