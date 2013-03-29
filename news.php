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
		</div
		
		<div id="News">
		<br />
		
		<?php
			
			$result=mysql_query("SELECT * FROM mid");
			
			while($rows=mysql_fetch_array($result))
			{
		?>
			<p class="important"> <?php echo $rows['title'] ?></p>
			
			<br />
			
			<p> <?php echo $rows['Description'] ?> </p>
			
			<p><a href="profile.php?id=<?php echo $rows['stock_id']; ?>">
			
			See more about 
			<?php 
				
				$res=mysql_query("SELECT * from stocks WHERE id={$rows['stock_id']}");
				
				if($ro=mysql_fetch_array($res))
					echo $ro['Name'];
			
			?>
			
			</a></p>
			
			<div id="time">
				
				<p>-<?php /*echo $rows['date'];*/ ?> </p>
			
			</div>
			
			<br />
		<?php
			}
		?>
		
		</div>
		
		
	</div>
<?php navigation();?>
	<!-- End Page Content -->
	
</body>

</html>