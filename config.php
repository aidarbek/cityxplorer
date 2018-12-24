<?php
	function connect()
	{
		$host = "104.155.142.19";
		$user = "root";
		$password = "root";
		$db = "city";
		$link = mysql_connect($host, $user, $password);
		mysql_select_db($db);
		mysql_set_charset('utf8', $link);
	}
?>