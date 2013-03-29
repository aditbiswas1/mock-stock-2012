<?php
include("../includes/connection.php");
include("../includes/functions.php");
$id = $_GET['id'];
//get the changes corresponding to the staock id passed
$query = "SELECT changes FROM stocks WHERE id={$id}";
$results = mysql_query($query, $connection);
$changes = mysql_fetch_array($results);



$data = unserialize($changes[0]);
echo implode(',', $data);

?>