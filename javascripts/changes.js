function show_changes(){
xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    var tex= xmlhttp.responseText;
	arr = tex.split(",")
	
	if(counter == arr.length){counter =0}
	document.getElementById("red").innerHTML=arr[counter];
	counter ++;
	//output
	
    }
  }
xmlhttp.open("GET","changes.php",true);
xmlhttp.send();

}