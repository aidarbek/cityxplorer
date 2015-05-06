<?php
	function connect()
	{
		$host = "localhost";
		$user = "root";
		$password = "";
		$db = "Your database";
		$link = mysql_connect($host, $user, $password);
		mysql_select_db($db);
		mysql_set_charset('utf8', $link);
	}
?>