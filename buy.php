<?php session_start(); 
//buying interface for the user
?>
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
	
	<title>Buy Stock</title>

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
		
		<div id="user">
		<p> Buy stocks</p>
		<div id="assets">
		
		
		<p>Cash: <?php echo $user['cash'];?></p>
		<?php
			//code for grabbing stock information
			$results= mysql_query("SELECT * FROM stocks ", $connection);
			$i=0;
			$stocks = array();
			while ($row = mysql_fetch_assoc($results)) {
					$stocks[$i]['stock_id'] = $row["id"];
					$stocks[$i]['name'] = $row["Name"];
					$stocks[$i]['value'] = $row["value"];
					$i++;
					}
			?>
		</div>
		</div>
		
		<div id="stock_of_user">
		<form action="buy_up.php" method="post">
		<select name="share">
			<?php foreach($stocks as $info){
					echo "<option>{$info['name']}</option>";
			}?>
		</select>
		<input type="number" name="qty" min="0" max="200" value="100">
		
		<input type="submit" value="buy">
		</form>
		<table>
		<thead>
			<td>Name</td>
			
			<td>Current Price</td>
			
			
		</thead>
		<tbody>
		<?php 
			foreach($stocks as $info){
			
			echo "<tr>
					<td><a href=\"profile.php?id={$info['stock_id']}\">{$info['name']}</a></p></td>
					<td>{$info['value']}</td>
					</tr>";
				}
		?>
		</tbody>
		
			
			
		</table>
		</div>
		
		
		
	</div>
<?php navigation();?>
	<div id="image"><img src=
	<!-- End Page Content -->
	
</body>

</html>