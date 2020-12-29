
<?php
include_once('db.php');
if(isset($_REQUEST['id']) and $_REQUEST['id']!=""){
$id=$_GET['id'];
$sql = "DELETE FROM aboutteam WHERE id='$id'";
if ($con->query($sql) === TRUE) {
 echo"<script>alert('Đã xóa thành viên này khỏi nhóm')</script>";
 echo"<script>window.location.href='members.php'</script>";
} 
else {
echo "Error updating record: " . $con->error;
}
 
$con->close();
}
?>