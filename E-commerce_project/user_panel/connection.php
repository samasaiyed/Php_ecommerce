<?php 
$server = "localhost";
$username = "root";
$password = "";
$db = "ecommerce";

$conn = mysqli_connect($server,$username,$password,$db);

if(!$conn)
{
	echo "please check your connection" .mysqli_error($conn);
}


?>