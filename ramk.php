<?php 
require_once("includes/connection.php");
include_once("includes/functions.php");

$query = "SELECT * FROM user";
$result_set= mysql_query($query, $connection);
$i=0;
	$users = array();
	while ($row = mysql_fetch_assoc($result_set)) {
			
			$users[$i]['id'] = $row["id"];
			$users[$i]['username'] = $row["username"];
			$users[$i]['cash'] = $row["cash"];
			$i++;
	}
	
	foreach($users as $user){
	
			$bought = find_bought_stocks($user['id']);

		$value_of_stock = 0;
		foreach($bought as $info){
			$qty = $info['quantity'];
			$stock = find_stock($info['stock_id']);
			$present_value= $qty * $stock['value'];
			$value_of_stock += $present_value; 
			
			}
			$current_assets = $user['cash'] + $value_of_stock;
		echo $current_assets;
	
	
	
	
	}

?>