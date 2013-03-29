<?php
//ADMIN USAGE ONLY part of the set of pages which will keep track of the changes in the stock market... changes are stored in the serialized form in the database
include("includes/connection.php");
include("includes/functions.php");

//time in seconds use i for minutes , H for hours
$time = date("i");
echo $time;
//serializing and unserializing data
//will be user to keep track of the stock value changes 
//append to the array of the stocks every 5 mins
//if time % 5 == 0 
//deserialize the array 
//append the current stock value
//serialize the array again 
//store in the database

//recieve all the stocks from the stock table collumns are going to be id, value , changes
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
	
		echo "<br/>";
		
		//userialize the changes array
		$changes = unserialize($stock['changes']);
		print_r($changes);
		echo ($time %5 );
		//if time % 5 == 0 append to array
		if(($time % 2 )== 0){
			array_push($changes, $stock['value']);
			
			
			$serialized = serialize($changes);
			$serialized = mysql_real_escape_string($serialized);
			
			$query = "UPDATE stocks SET changes=\"{$serialized}\" WHERE id={$stock['id']}";
			mysql_query($query, $connection);
			/*if (!mysql_error()) print 'all is fine';
			else print "loser";*/
		}
	}
redirect_to("time2.php");
?>