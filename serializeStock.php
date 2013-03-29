<?php
//file for initializing the serialized stock data for the changes 
include("includes/connection.php");


$query = "SELECT * FROM stocks";
$results = mysql_query($query, $connection);
$i=0;
	$stocks = array();
	while ($row = mysql_fetch_assoc($results)) {
			
			$stocks[$i]['id'] = $row["id"];
			$stocks[$i]['value'] = $row["value"];
			$stocks[$i]['changes'] = $row["changes"];
			$i++;
	}
//use the stocks structure to extract the serialised values stored in changes
	foreach($stocks as $stock){
	$value =Array($stock['value'],$stock['value']);
	$serialized = serialize($value);
	
	$serialized = mysql_real_escape_string($serialized);
	echo $serialized;
	
	$query = "UPDATE stocks SET changes=\"{$serialized}\" WHERE id={$stock['id']}";
	mysql_query($query, $connection);
	if (!mysql_error()) print 'all is fine';
	else print "loser";
	//
	}

?>