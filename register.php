<?php

require_once("includes/connection.php"); 
include_once("includes/functions.php");

$password = sha1($_POST['pass']);
$start= 1000000;
$query = "SELECT * FROM user WHERE username=\"{$_POST['username']}\" ";
$results= mysql_query($query, $connection);
$user = mysql_fetch_array($results);
$query = "SELECT * FROM user WHERE email=\"{$_POST['email']}\" ";
$results= mysql_query($query, $connection);

$email = mysql_fetch_array($results);


if(empty($user) && empty($email)){
$query = "INSERT INTO user (username, password, email, cash, worth ) VALUES (\"{$_POST['username']}\",\"{$password}\",\"{$_POST['email']}\",{$start}, {$start})"; 
mysql_query($query, $connection);
redirect_to("index.php");}

else{
if (!empty($user)){redirect_to("invalid.php?t=user");}
if	(!empty($email)){redirect_to("invalid.php?t=email");}
}




?>