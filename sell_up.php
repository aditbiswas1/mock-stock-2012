<?php
session_start();
require_once("includes/connection.php");
include_once("includes/functions.php");
/*
get the user from the post
get the info on which stock he wants to sell
calculate amount of money returned from selling the stock

update the baught table to decrease the quantity held and reduce the cost 
if selling reduces to NULL delete the row from the baught table

update the cash in the users table by amount recieved when sold
*/
$user = find_user();
$qty = $_POST['qty'];

print_r($_POST);
$query = "SELECT * FROM stocks WHERE Name = \"{$_POST['share']}\"";			//gets the stock information based on post data
$results= mysql_query($query, $connection);
$stock = mysql_fetch_array($results);										// array with stock info [id] and [value] are to be user for baught

$selling_cost = $qty * $stock['value'];


 
//find the bought stock
$query = "SELECT * FROM baught WHERE stock_id = \"{$stock['id']}\" AND user_id=\"{$user['id']}\"";			//gets the stock information based on post data
$results= mysql_query($query, $connection);
$bought = mysql_fetch_array($results);



//find out quantity left after selling if less than zero update_quantity = 0

if( ($bought['quantity'] - $qty) <0){
	$allowed = False;
}
else{
$new_qty =$bought['quantity'] - $qty;
$allowed = True;
}
if(isset($new_qty)){echo $new_qty;}
echo "</br>";
if ($allowed == True){
	$cost = $bought['cost'] - $selling_cost;
	echo $cost;

	//update the baught table ... reduce quantity and cost
	//if $new_qty == 0 DELETE the row from the table
	if($new_qty == 0){


		$query = "DELETE  FROM baught WHERE stock_id = {$stock['id']} AND user_id={$user['id']}";

		mysql_query($query, $connection);
		}

	else{
		$query =  "UPDATE baught SET quantity={$new_qty}, cost={$cost} WHERE user_id={$user['id']} AND stock_id = \"{$stock['id']}\"";
		mysql_query($query, $connection);
	}
	//update the  user table increasing the cash
	$cash = $user['cash'] + $selling_cost;
	$query =  "UPDATE user SET cash={$cash} WHERE id={$user['id']}";
	mysql_query($query, $connection);
	
	$new_value = $stock['value']-($_POST['qty']/7)  ;
	$query = "UPDATE stocks SET value ={$new_value} WHERE id={$stock['id']}";
	mysql_query($query, $connection);

}

else{
	echo "you dont own that much stock";
}


//return to sell page
redirect_to("sell.php");


?>