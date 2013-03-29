<?php

session_start();

if($_SESSION['on']==1)
{
	require_once("includes/connection.php");	
	
	$desc=$_POST['desc'];
	$stock_id=$_GET['id'];
	$sequ=$_POST['sequ'];
	$title=$_POST['title'];
	$change=$_POST['change'];
	
	if( $stock_id > 0 & $sequ > 0)
	{
		mysql_query("INSERT INTO mid (stock_id, Description, sequence, diff, title ) VALUES ( \"{$stock_id}\" , \"{$desc}\" , \"{$sequ}\" , \"{$change}\" , \"{$title}\" )");
	}
	else
		die("The Values Entered Werent Valid <a href=\"sportfolio.php?id={$stock_id}\">Go back</a>");

}

header("Location: sportfolio.php?id={$stock_id}");	
?>
