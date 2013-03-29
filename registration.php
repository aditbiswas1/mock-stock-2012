<?php require_once("includes/connection.php"); ?>
<?php include_once("includes/functions.php"); ?>
<?php 
		if(!empty($_POST)){
		if($_POST['t'] = "user"){$statement = "Username already taken";}
		if($_POST['t'] = "email"){$statement = "email already used";}
		
		}
 ?>
<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>News</title>

	<!-- CSS -->
	
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/stylesmain.css">
	
</head>

	<!-- Main HTML -->
	
<body>
	
	<!-- Begin Page Content -->
	
	<div id="container">
		<p><?php  if(isset($statement)){echo $statement;}?></p>
		<form action="register.php" method="post">
		
		<label for="name">Username:</label>
		
		<input type="name" name="username">
		
		<label for="username">Password:</label>
		<input type="password" name="pass">
		
		<label for="username">Email Address:</label>
		<input type="email" name="email">
		
		<input type="submit" value="Sign Up">
		
		</div>
		
		</form>
		
		
	</div>

	<!-- End Page Content -->
	
</body>

</html>