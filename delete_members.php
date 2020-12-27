<?php
include_once('db.php');
if(isset($_REQUEST['id']) and $_REQUEST['id']!=""){
$id=$_GET['id'];
$sql = "DELETE FROM aboutteam WHERE id='$id'";
if ($con->query($sql) === TRUE) {
 echo '<a href="members.php">Quay lại</a>';
} 
else {
echo "Error updating record: " . $con->error;
}
 
$con->close();
}
?>