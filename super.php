<?php

session_start();

$name=$_POST['username'];
$pass=$_POST['pass'];

if( $_POST['username'] & $_POST['pass'] )
{
	$check = $_POST['username'];
	
	if ( $check != "admin" ) 
	{
		die('Wrong Username, please <a href="tp.html">try again</a>.');
	}
	
	else
	{
		//gives error if the pass is wrong
		if ($_POST['pass'] != "admin") 
		{
			die('Incorrect pass, please <a href="tp.html">try again</a>.');
		}
		else
		{
			// if login is ok then we create a session
			$_SESSION['on']=1;
			//then redirect them to the members area
			header("Location: middle.php");
		}
	}
}
else
{
	
	echo "<script type='text/javascript'>window.top.location='http://engineer.org.in/mockstock/tp.html';</script>";
}
?>