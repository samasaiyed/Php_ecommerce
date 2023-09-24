<?php 
include 'connection.php';

$pid = $_GET['pid'];
$status = $_GET['status'];

$q = "update product set status=$status where pid = $pid";
mysqli_query($conn,$q);
header('location:admin_product_detail.php');

?>