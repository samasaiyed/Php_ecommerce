<?php 
include 'connection.php';

$rid = $_GET['rid'];
$status = $_GET['status'];

$q = "update product_rating set status=$status where rid = $rid";
mysqli_query($conn,$q);
header('location:admin_product_rating.php');

?>