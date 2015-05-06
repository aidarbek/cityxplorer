<?php
include "config.php";
connect();
$data = [];
if($_GET['type'] == "register")
{
	if(isset($_POST['mail']) && isset($_POST['name']) && isset($_POST['password'])
		&& $_POST['mail'] != "" && $_POST['name'] !="" && $_POST['password'] != "")
	{
		$q = "SELECT * FROM users  WHERE mail = '".$_POST['mail']."'";
		$query = mysql_query($q);
		$err = 0;
		while($row = mysql_fetch_array($query))
		{
			if(isset($row['id']))
			{
				$err = 1;
			}
		}
		if($err)
		{
			$data['error'] = "User with such e-mail is already exist!";
		}
		else
		{
			$q = "INSERT INTO users(name, mail, password) VALUES('".$_POST['name']."','".$_POST['mail']."','".$_POST['password']."')";
			mysql_query($q);
			$data['success'] = "You successfully registered!";
		}
	}
	else
	{
		$data['error'] = "You should fill all fields!";
	}
}
else
{
	$q = "SELECT * FROM users  WHERE mail = '".$_POST['mail']."'";
	$query = mysql_query($q);
	$success = 0;
	while($row = mysql_fetch_array($query))
	{
		if(isset($row['id']) && $row['password'] == $_POST['password']);
		{
			$success = 1;
			$data['id'] = $row['id'];
			$data['name'] = $row['name'];
			$data['mail'] = $row['mail'];
		}
	}
	if(!$success)
	{
		$data['error'] = "Could not authorise!";
	}
}
echo json_encode($data);
?>