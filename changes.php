<?php require_once("includes/connection.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php
$query = "SELECT * FROM stocks";
$results = mysql_query($query, $connection);
$i=0;
	$stocks = array();
	while ($row = mysql_fetch_assoc($results)) {
			
			$stocks[$i]['id'] = $row["id"];
			$stocks[$i]['name'] = $row["Name"];
			$stocks[$i]['value'] = $row["value"];
			$stocks[$i]['changes'] = $row["changes"];
			$i++;
	}
	
	foreach($stocks as $stock){
	$name = $stock['name']. " ". $stock['value'];
	$changes = unserialize($stock['changes']);
	$required =array_slice($changes, -1, 1, false);
	$difference =  $stock['value']-$required[0];
	if($difference < 0 ){ $sign = "-";} else{ $sign = "+";}
	$difference = abs($difference);
	$returned[] = $name." ".$sign.$difference;
	}
	
	echo implode(",", $returned);
	//using array_slice to get last two changes in the array of change
	

?>