<?php
session_start();
require_once("includes/connection.php");
$username = $_POST['username'];


$query = "SELECT * ";
	$query .= "FROM user ";
	$query .= "WHERE username =\"". $username ."\" ";
	

$result_set = mysql_query($query, $connection);


$user = mysql_fetch_array($result_set);

if(!empty($user)){
if($_POST['username'] == $user['username'] && sha1($_POST['pass']) ==$user['password']){

$_SESSION["user_id"] = $user['id'];
echo "<script type='text/javascript'>window.top.location='http://engineer.org.in/mockstock/portfolio.php';</script>";

}
else{
echo "<script type='text/javascript'>window.top.location='http://engineer.org.in/mockstock/index.php';</script>";
//header("location: index.php");
}
}
else{echo "<script type='text/javascript'>window.top.location='http://engineer.org.in/mockstock/index.php';</script>";}

?>