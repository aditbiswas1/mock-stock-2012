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
	<script src="javascripts/RGraph.line.js" ></script>
	<script>

function show_data(stock){
xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    var tex= xmlhttp.responseText;
	arr = tex.split(",")
	
	var line = new RGraph.Line('cvs', arr);
            //line.Set('chart.labels', ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']);
            line.Draw();
	
	
	//output
	
    }
  }
xmlhttp.open("GET","graphs/data.php?id="+stock,true);
xmlhttp.send();

}
</script>
	
	
</head>

	<!-- Main HTML -->
	
<body onload="show_data(<?php echo $_GET['id']?>)">
	
	<!-- Begin Page Content -->
	
	<div id="container">
		
		<div id= "prices">
		<p id='red'>CityGroup -50.0</p>
		</div>
		<h1>A basic line chart</h1>

		<canvas id="cvs" width="600" height="250">[No canvas support]</canvas>
		
		
	</div>
<?php navigation();?>
	<!-- End Page Content -->
	
</body>

</html>