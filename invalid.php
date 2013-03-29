<form action='registration.php' method='post' name='frm'>
<?php
foreach ($_GET as $a => $b) {
echo "<input type='hidden' name='".$a."' value='".$b."'>";
}
?>
</form>
<script language="JavaScript">
document.frm.submit();
</script>