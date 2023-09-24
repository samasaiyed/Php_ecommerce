<?php 
session_start();
include 'connection.php';

$prod_id = $_GET['pid'];
$uid = $_SESSION['user_id'];

if(isset($uid))
{
	
	if(isset($prod_id))
	{
		$sel = "select *from wishlist where uid ='".$uid."' AND pid = '".$prod_id."'";
			$result = mysqli_query($conn,$sel);
			$row = mysqli_num_rows($result);

			if($row == 1)
			{
				echo "<script>
						alert('product already exist in wishlist');
						window.history.back();
					  </script>";
			}
			else
			{
	
				$insert = "INSERT INTO `wishlist`(`uid`, `pid`) VALUES ('".$uid."','".$prod_id."')";
				if(mysqli_query($conn,$insert))
				{
					echo "<script> 
							alert('product added in wishlist');
							window.history.back(); 
						 </script>";
				}
				else
				{
					echo "Error : " .mysqli_error($conn);
				}
			}
	}

}
else
{
	echo "<script> 
			window.location.href = 'login.php'; 
		 </script>";
}

?>