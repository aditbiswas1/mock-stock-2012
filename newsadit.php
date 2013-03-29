<?php session_start(); ?>
<!doctype html>
<?php require_once("includes/connection.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php 
//find the user
$user = find_user();
 ?>
<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>News</title>

	<!-- CSS -->
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/stylesmain.css">
	<script src="javascripts/changes.js" ></script>
	
	<script>
	var counter =0;

	function myFunction()
	{
	setInterval(function(){show_changes()},2000);
	}
	</script>
</head>

	<!-- Main HTML -->
	
<body onload="myFunction()">
	
	<!-- Begin Page Content -->
	
	<div id="container">
		
		<div id= "prices">
		<p id='red'>Stock Prices</p>
		</div>
		
		<div id="News">
			<p class="important">CITY GROUP reports 88 percent plunge</p>
			<p>US banking giant Citigroup today said it has reported 88 per cent plunge in net profit at USD 468 million in the July-September quarter due to USD 4.7 billion loss related to the joint venture brokerage business, Morgan Stanley Smith Barney.
			</p>
			<p><a href="#">See more about Citygroup</a></p>
		</div>
		
		
	</div>
<?php navigation();?>
	<!-- End Page Content -->
	
</body>

</html>