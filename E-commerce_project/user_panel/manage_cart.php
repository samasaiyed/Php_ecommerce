<?php 
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST")
{
	if(isset($_POST['addcart']) || isset($_POST['buynow']))
	{
		if(isset($_SESSION['user_id']))
		{
		if(isset($_SESSION['cart']))
		{
			$items = array_column($_SESSION['cart'],'product_name');
			if(in_array($_POST['pname'],$items))
			{
				echo "<script> alert('product already added to a cart');
								window.history.back();
					 </script>" ;
			}
			else
			{
				$count = count($_SESSION['cart']);
				$_SESSION['cart'][$count] = array('image'=>$_POST['image'],'product_id'=>$_POST['pid'],'product_name'=> $_POST['pname'],'price'=>$_POST['price'],'brand'=>$_POST['brand'],'quantity'=>1);
				echo "<script> alert('product added to a cart');
								window.history.back();
					 </script>" ;
			}
		}
		else
		{
			$_SESSION['cart'][0] = array('image'=>$_POST['image'],'product_id'=>$_POST['pid'],'product_name'=> $_POST['pname'],'price'=>$_POST['price'],'brand'=>$_POST['brand'],'quantity'=>1);
			echo "<script> alert('product added to a cart');
								window.history.back();
					 </script>" ;
		}
		}
		else
		{
			echo "<script>
				window.location.href = 'login.php';
					 </script>" ;
		}
	}
	if(isset($_POST['remove']))
	{
		foreach ($_SESSION['cart'] as $key => $value) 
		{
			if($value['product_name'] == $_POST['pname'])
			{
				unset($_SESSION['cart'][$key]);
				$_SESSION['cart'] = array_values($_SESSION['cart']); // rearrange index number

				echo "<script>
						alert('product Removed Form your Cart');
						window.location.href = 'cart.php';
					  </script>";
			}
		}
	}
	if(isset($_POST['change_qty']))
	{
		foreach ($_SESSION['cart'] as $key => $value) 
		{
			if($value['product_name'] == $_POST['pname'])
			{
				$_SESSION['cart'][$key]['quantity'] = $_POST['change_qty'];
				echo "<script>
						window.location.href = 'cart.php';
					  </script>";
			}
		}
	}
}


?>
<?php
/* 
include 'connection.php';

$prod_id = $_POST['pid'];
$uid = $_SESSION['user_id'];
$qty = 1;

if(isset($uid))
{
	
	if(isset($prod_id))
	{
			$sel = "select *from cart where uid ='".$uid."' AND pid = '".$prod_id."'";
			$result = mysqli_query($conn,$sel);
			$row = mysqli_num_rows($result);

			if($row == 1)
			{
				if(isset($_POST['change_qty']))
				{
					$update_qty = "update cart set qty = '".$_POST['change_qty']."' where pid = '".$_POST['pid']."' ";
					if(mysqli_query($conn,$update_qty))
					{
					echo "<script> 
							alert('updated product quantity in cart');
							window.history.back(); 
						 </script>";
					}

				}
				else
				{
					echo "<script>
						alert('product already exist in cart');
						window.history.back();
					  </script>";
				}
			}
			else
			{
					$insert = "INSERT INTO `cart`(`uid`, `pid`,`qty`) VALUES ('$uid','$prod_id','$qty')";
					if(mysqli_query($conn,$insert))
					{
					echo "<script> 
							alert('product added in cart');
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
*/


?>
