<?php
	function get_id_by_type($place)
	{
		$q = "SELECT id FROM types WHERE name = '".$place."'";
		$query = mysql_query($q);
		while($row = mysql_fetch_array($query))
		{
			return $row['id'];
		}
	}
	include "config.php";
	connect();
	mysql_query("SET NAMES 'utf-8'");
	$place = $_GET['place'];
	echo $place;
	$q = "INSERT INTO types(name) VALUES('".$place."')";
	// WE DO NOT INSERT NOW !!!
	//-----------------------

	mysql_query($q);
	
	$id = get_id_by_type($_GET['place']);
	$str = file_get_contents("https://maps.googleapis.com/maps/api/place/textsearch/json?query=".$place."&key=AIzaSyASMZfGpGubOS-4ovOa8dMs4QERpHsalns&sensor=true&location=51.15,71.45&radius=50000");
	$data = json_decode($str);
	foreach ($data->results as $value) {
		$lat = $value->geometry->location->lat;
		$lng = $value->geometry->location->lng;
		//echo $value->formatted_address."<br>".$value->name."<br>".$value->geometry->location->lat.", ".$value->geometry->location->lng;
		//echo "<hr>";
		$q = "INSERT INTO places(longitude, latitude, type, name, address) VALUES(".$lng.",".$lat.",".$id.",'".$value->name."','".$value->formatted_address."')";
		mysql_query($q);
	}
	//echo var_dump($data->results);
	//echo($str);
?>