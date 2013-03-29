<?php session_start(); ?>
<!doctype html>
<?php require_once("includes/connection.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php 
//find the user
$user = find_user();
 ?>
 <?php $stock = find_stock($_GET['id']);?>
<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>News</title>

	<!-- CSS -->
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/stylesmain.css">
	<script src="javascripts/RGraph.common.core.js" ></script>
	
	<script>
var counter =0;
function show_changes(){
xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    var tex= xmlhttp.responseText;
	arr = tex.split(",")
	
	if(counter == arr.length){counter =0}
	document.getElementById("red").innerHTML=arr[counter];
	counter ++;
	//output
	
    }
  }
xmlhttp.open("GET","changes.php",true);
xmlhttp.send();

}
function myFunction()
{
setInterval(function(){show_changes()},2000);
}
</script>
	
	
</head>

	<!-- Main HTML -->
	
<body onload="myFunction()">
	
	<!-- Begin Page Content -->
	
	<div id="container">
		
		<div id= "prices">
		<p id='red'>CityGroup -50.0</p>
		</div>
		
		
		
	</div>
<?php navigation();?>
	<!-- End Page Content -->
	
</body>

</html>