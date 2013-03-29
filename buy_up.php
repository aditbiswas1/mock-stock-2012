<?php
session_start();
//redirected to this page from the buying page for validation and updating the database
require_once("includes/connection.php");
include_once("includes/functions.php");

$user = find_user();


/*
get the values of the stock from the stock table
get the baught stocks from the baught table
get the user details from the session

if user has baught the stock
	update
else
	insert
	
update the changes in the value of the stock... since people are buying stock prices go up
*/

$query = "SELECT * FROM stocks WHERE Name = \"{$_POST['share']}\"";			//gets the stock information based on post data
$results= mysql_query($query, $connection);
$stock = mysql_fetch_array($results);										// array with stock info [id] and [value] are to be user for baught

//verify that user is able to afford stock
$estimated_cost = $stock['value'] * $_POST['qty'];

if ($estimated_cost > $user['cash']){}
else{
	$cash_left = $user['cash']-$estimated_cost;
	//find out whether user has already baught the stock or not
	
	$query= "SELECT * FROM baught WHERE user_id=\"{$user['id']}\" AND stock_id=\"{$stock['id']}\"";
	$results= mysql_query($query, $connection);
	
	$bought = mysql_fetch_array($results);
	$worth = $user['worth']- $estimated_cost;
	//$baught will be empty if user did not buy any stock
	if(empty($bought)){
		$query = "INSERT INTO baught (user_id, stock_id, quantity, cost) VALUES ({$user['id']},{$stock['id']},{$_POST['qty']},{$estimated_cost})";
		mysql_query($query, $connection);
		
		$query = "UPDATE user SET cash={$cash_left}  WHERE id={$user['id']}";
		mysql_query($query, $connection);
	}													//if empty insert query the table
	else{
		$new_cost = $bought['cost']+ $estimated_cost;
		$new_qty = $bought['quantity'] + $_POST['qty'];
		echo $new_qty;
		$query = "UPDATE baught SET cost={$new_cost}, quantity={$new_qty} WHERE user_id={$user['id']} AND stock_id={$stock['id']}";
		mysql_query($query, $connection);
		
		
		
		
		$query = "UPDATE user SET cash={$cash_left}  WHERE id={$user['id']}";
		mysql_query($query, $connection);
		echo mysql_error();
	}
	$new_value = $stock['value']+($_POST['qty']/7)  ;
	
	$query = "UPDATE stocks SET value ={$new_value} WHERE id={$stock['id']}";
	mysql_query($query, $connection);
	
}
redirect_to("buy.php");



?>