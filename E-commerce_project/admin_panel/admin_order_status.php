<?php
include "connection.php";

$pid = $_GET['pid'];
$status = $_GET['status'];

$q = "update order_master set status='$status' where pid = '$pid'";

if(mysqli_query($conn,$q))
{
	echo "<script> window.history.back(); </script>";
}
?>