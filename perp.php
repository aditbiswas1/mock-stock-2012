<?php

mysql_connect("localhost", "root", "adit123") or die(mysql_error());
mysql_select_db("mockstock") or die(mysql_error());

$result=mysql_query("SELECT * FROM mid WHERE sequence={$_GET['i']} ");

	while($rows=mysql_fetch_array($result))
	{
		
		$desc = $rows['Description'];
		$stock_id = $rows['stock_id'];
		$sequ = $rows['sequence'];
		$title = $rows['title'];
		$change = $rows['diff'];
		$hours = date("h");
		$hours = $hours + 6;
		$hours = $hours % 24;
		$minu = date("i");
		$hours = $hours.":".$minu;
		
		$res=mysql_query("SELECT * FROM stocks WHERE id={$stock_id}");
		echo mysql_error();
		
		while($res1=mysql_fetch_array($res))
		{
			$value=$res1['value'];
			$value=$value * ( 100 + $change );
			$value=$value / 100;
			mysql_query("UPDATE stocks SET value={$value} WHERE id={$stock_id}");
		}
		
		mysql_query("INSERT INTO news (Description,stock_id,sequence,title,date) VALUE ( \"{$desc}\",\"{$stock_id}\",\"{$sequ}\",\"{$title}\",\"{$hours}\" )");
		
	}
	
?>
