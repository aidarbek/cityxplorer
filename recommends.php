<?php
	echo file_get_contents("http://localhost:5000/?user_id=".$_GET['user_id']);
?>