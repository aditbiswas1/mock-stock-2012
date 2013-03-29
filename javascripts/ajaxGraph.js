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
	
    }
  }
xmlhttp.open("GET","graphs/data.php?id="+stock,true);
xmlhttp.send();