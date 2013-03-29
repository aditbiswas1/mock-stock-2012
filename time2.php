
<script language="JavaScript">
function myfunction()
{
var time =60000 					//1 minute * 60 seconds * 1000 ms
setTimeout(function(){document.frm.submit()},60000);
}
</script>
<body onload="myfunction()">
<form action='time.php' method='post' name='frm'>
<?php
echo "<h1> THIS PAGE IS UPDATING THE CHANGES HAPPENING IN THE STOCK MARKET </h1>";
?>
</form>
</body>