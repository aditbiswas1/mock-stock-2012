<?php session_start(); ?>
<!doctype html>
<?php require_once("includes/connection.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php 
//find the user
$user = find_user();

$bought = find_bought_stocks($user['id']);

$value_of_stock = 0;
foreach($bought as $info){
	$qty = $info['quantity'];
	$stock = find_stock($info['stock_id']);
	$present_value= $qty * $stock['value'];
	$value_of_stock += $present_value; 
	
}
$current_assets = $user['cash'] + $value_of_stock;
 ?>
<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Sell</title>

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
		<p> Sell stocks</p>
		<div id="assets">
		
		<p>Current Assets: Rs <?php echo $current_assets;?></p>
		</br>
		<p>Value of Stocks: Rs. <?php echo $value_of_stock;?></p>
		</br>
		<p>Cash: <?php echo $user['cash'] ;?></p>
		
		</div>
		</div>
		<div id="stock_of_user">
		<table>
		<thead>
			<td>Name</td>
			<td>Quantity</td>
			<td>Net Cost</td>
			<td>Current Price</td>
			<td>Current Value</td>
			<td>Quantity</td>
			<td>Action</td>
		</thead>
		<tbody>
		
			<?php
		$bought = find_bought_stocks($user['id']);
		foreach($bought as $info){
				
				$qty = $info['quantity'];
				$stock = find_stock($info['stock_id']);
				$present_value= $qty * $stock['value'];
				echo "<form action=\"sell_up.php\" method=\"post\">";
				echo "<tr>";
				echo "<input type=\"hidden\" name=\"share\" value=\"{$stock['Name']}\">";
				
				echo "<td><a href=\"profile.php?id={$stock['id']}\">{$stock['Name']}</a></p></td>";
				echo "<td>{$qty}</td>";
				echo "<td>{$info['cost']}</td>";
				echo "<td>{$stock['value']}</td>";
				echo "<td>{$present_value}</td>";
				echo "<td><input type=\"number\" name=\"qty\" min=\"0\" max=\"{$info['quantity']}\" value=\"{$info['quantity']}\"></td>";
				echo "<td><input type=\"submit\" value=\"Sell\"></td>";
				echo "</tr>";
				echo "</form>";
			}
			?>
			
		</tbody>
		
			
			
		</table>
		</div>
		
		
		
	</div>
<?php navigation();?>
	<!-- End Page Content -->
	
</body>

</html>