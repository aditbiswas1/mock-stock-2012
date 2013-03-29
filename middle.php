<?php

require_once("/includes/connection.php");
session_start();

?>
<div id="container">
<h1>Stocks:</h1>
	<?php
	
		$result=mysql_query("SELECT * FROM stocks");

		while($row=mysql_fetch_array($result))
		{
			echo "{$row['id']}.<a href=\"sportfolio.php?id={$row['id']}\"> {$row['Name']}</a>" ;
			echo "<br />";
		}
	
	?>

</div>

 
