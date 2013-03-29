<html>

<head>

<?php
session_start();
require_once("includes/connection.php");
$_SESSION['stock_id']=$_GET['id'];
?>


</head>

<body>

<div id="container" >
<?php
if($_SESSION['on']==1)
{ ?>
	
	<div id="top">
	
	<p><?php 
	$stock_id=$_GET['id'];
	$blah=mysql_query("SELECT * FROM stocks WHERE id = ". $stock_id ." ");
	$result=mysql_fetch_array($blah);
	echo $result['Name']."\t\t\t".$result['value'];
	?></p>
	
	</div>
	
	<div id="left">
	<form action="deletenews.php?id=<?php echo $_GET['id'] ?>" method="post">
	
	<?php
	$result=mysql_query("SELECT * FROM mid WHERE stock_id=".$_GET['id'] ." ") ;
	while($res=mysql_fetch_array($result))
	{
	?>
	<input type="checkbox" name="formnews[]" value="<?php echo $res['id']; ?>"><?php echo $res['Description'];?>
	<br />
	<?php
	}
	?>
	<input type="submit" value="Delete" id="delete" name="delete" >
	</form>
	
	</div>
	
	<div id="right">
	
		<form action="addnews.php?id=<?php echo $_GET['id'] ?>" method="post">
	
			<label>Title:</label>
			<input type="text" name="title"></input>
			<br />
			
			<label>Description:</label>
			<textarea name="desc" value="Enter The News Here" ROWS=5 COLS=40>Enter The News Here</textarea>
			<br />

			<label>Sequence:</label>
			<input type="text" name="sequ" value="Sequence"></input>
			<br />
			
			<label>Change:</label>
			<input type="text" name="change"></input>
			<br />
			
			<input type="submit" name="submit" value="Add News">
		
		</form>
	
	</div>

	<?php
}
?>
</div>

</body></html>