<?php

session_start();
mysql_connect("localhost", "root", "adit123") or die(mysql_error());
mysql_select_db("mockstock") or die(mysql_error());

if($_SESSION['on']==1)
{
	/*$result=mysql_query("SELECT * FROM news");
	$count=mysql_num_rows($result);
	for($i=0;$i<$count;$i++)
	{
	
		$del_id=$_POST['$formnews'];
		$result=mysql_query("DELETE FROM news WHERE id='$del_id' AND stock_id='1'");
	}
}

header("Location: sportfolio.php?id=1");

?>*/

if(isset($_POST['formnews'])){
		$news= $_POST['formnews'];
		foreach($news as $id){
		$query = "DELETE FROM news WHERE id={$id} AND stock_id={$_GET['id']}";
		mysql_query($query);
		}
		
	}
	
}

echo "<script type='text/javascript'>window.top.location='http://engineer.org.in/mockstock/sportfolio.php?id={$_GET['id']}';</script>";
?>
		