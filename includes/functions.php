
<?php 
function mysql_prep($value){
	$magic_quotes_active = get_magic_quotes_gpc();
	$new_enough_php = function_exists("mysql_real_escape_string"); //PHP >=4.3.0
	
	if($new_enough_php){//PHP >=4.3.0
	if($magic_quotes_active){$value = stripslashes($value);}
	$value = mysql_real_escape_string($value);
	}
	else{//PHP < 4.3.0
		if(!magic_quotes_active){$value = addslashes($value);}
	}
	return $value;
}
//redirect to a given location
function redirect_to($location = NULL){
	if($location !=NULL){
	header("location: {$location}");
	exit;
}
}


//find user who has logged in
function find_user(){
	global $connection;
	
	$user_id=$_SESSION['user_id'];
	

	$query = "SELECT * ";
	$query .= "FROM user ";
	$query .= "WHERE id=". $user_id ." ";
	$query .= "LIMIT 1";
	
	$result_set = mysql_query($query, $connection);
	
	$user = mysql_fetch_array($result_set);
	return $user;
	}
//find purchased stocks given an user ID
function find_bought_stocks($user_id){
	global $connection;
	$query="SELECT * ";
	$query .="FROM baught ";
	$query.="WHERE user_id=". $user_id. " ";
	$result_set = mysql_query($query, $connection);
	$i=0;
	$bought = array();
	while ($row = mysql_fetch_assoc($result_set)) {
			
			$bought[$i]['stock_id'] = $row["stock_id"];
			$bought[$i]['quantity'] = $row["quantity"];
			$bought[$i]['cost'] = $row["cost"];
			$i++;
	}
	return $bought;
}
//Find Stock given a stock ID
function find_stock($stock_id){
	global $connection;
	$query="SELECT * ";
	$query .="FROM stocks ";
	$query.="WHERE id=". $stock_id. " ";
	
	$result_set = mysql_query($query, $connection);

	return mysql_fetch_array($result_set);
}
?>

<?php
//Navigation menu to be put on each page
 function navigation(){
global $user;
echo "		<div id=\"menu\">

			<ul class=\"ca-menu\">
                    <li>
                        <a href=\"portfolio.php\">
                            
                            <div class=\"ca-content\">
								<span class=\"ca-icon\">F</span>
                                <h2 class=\"ca-main\">Portfolio</h2>
                                <h3 class=\"ca-sub\">Details of your assets</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href=\"news.php\">
                            
                            <div class=\"ca-content\">
								<span class=\"ca-icon\">b</span>
                                <h2 class=\"ca-main\">News</h2>
                                <h3 class=\"ca-sub\">Current happenings</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href=\"buy.php\">
                            
                            <div class=\"ca-content\">
								<span class=\"ca-icon\">S</span>
                                <h2 class=\"ca-main\">Buy</h2>
                                <h3 class=\"ca-sub\">Purchase Stock</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href=\"sell.php\">
                            
                            <div class=\"ca-content\">
								<span class=\"ca-icon\">e</span>
                                <h2 class=\"ca-main\">Sell</h2>
                                <h3 class=\"ca-sub\">Sell stock</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href=\"logout.php\">
                            
                            <div class=\"ca-content\">
								<span class=\"ca-icon\">A</span>
                                <h2 class=\"ca-main\">Logout</h2>
                                <h3 class=\"ca-sub\">Leave Mock Stock</h3>
                            </div>
                        </a>
                    </li>
                </ul>
				</div>
				";
				

}
?>

