<html>
<head>
<script src="javascripts/RGraph.common.core.js" ></script>
<script src="javascripts/RGraph.line.js" ></script>
<script>

function show_data(stock){
xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    var tex= xmlhttp.responseText;
	arr = tex.split(",")
	
	var line = new RGraph.Line('cvs', arr);
            line.Set('chart.labels', ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']);
            line.Draw();
	
	
	//output
	document.getElementById("data").innerHTML=arr;
    }
  }
xmlhttp.open("GET","graphs/data.php?id="+stock,true);
xmlhttp.send();

}
</script>
</head>
<body onload="show_data(<?php echo $_GET['id']?>)">
<p>data for stock is </p>
<p id="data" ></> </p>
<input type="button" ></input>


<h1>A basic line chart</h1>

    <canvas id="cvs" width="600" height="250">[No canvas support]</canvas>
	
</body>
</html>
