<?php 
session_start();
include 'connection.php';

if(isset($_GET['pid']))
{
	$del = "DELETE FROM `wishlist` WHERE pid = '".$_GET['pid']."'  and uid = '".$_SESSION['user_id']."' ";
	$res = mysqli_query($conn,$del);

	if($res)
	{
		echo "<script> 
				alert('Product Deleted From Wishlist');
				window.history.back(); 
			  </script>";
	}
	else
	{
		echo mysqli_error($conn);
	}
}


?>