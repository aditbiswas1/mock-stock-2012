<html>

<head>

	<script type="text/javascript">
	var i=0;
	
	
	function transfer(){
	
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	if (xmlhttp.readyState==4 && xmlhttp.status == 200)
	{
	i++;
	
	}
	
	xmlhttp.open("GET", "perp.php?i="+i, true);
	xmlhttp.send();
	
	
	}
	
	
	var time = 10000 ;
	function timed(){
	setInterval(function(){tranfser()},time);
	}

	</script>	

</head>	


	
<body onload="timed()">
	
	
	
</body>

</html>