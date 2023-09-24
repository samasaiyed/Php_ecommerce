<?php 
session_start();
include "connection.php";

if($_SERVER["REQUEST_METHOD"] == "POST")
{
		$uid = $_SESSION['user_id'];
		$fname = $_POST['fname'];
			$email = $_POST['email'];
			$address = $_POST['address'];
			$city = $_POST['city'];
			$state = $_POST['state'];
			$pincode = $_POST['pincode'];
			$pmode = $_POST['pmode']; 		


	if(isset($_POST['checkout']))
	{

 				$query1 = "INSERT INTO user_order_detail(uid,full_name,email,address,city,state,pincode,payment_mode) VALUES ('$uid','$fname','$email','$address','$city','$state','$pincode','$pmode')";

 				if(mysqli_query($conn,$query1))
 				{
 					$status = 'pending';

 					$order_id = mysqli_insert_id($conn);
 					$query2 = "INSERT INTO order_master(order_id,pid,pname,qty,price,total_price,paid_amount,status) VALUES (?,?,?,?,?,?,?,'$status')";
 					$stmt = mysqli_prepare($conn,$query2);

 					if($stmt)
 					{
 						mysqli_stmt_bind_param($stmt,"iisiiis",$order_id,$pid,$pname,$qty,$price,$total_price,$paid_amount);
 					
 							foreach($_SESSION['cart'] as $key => $value) 
 							{
 								$pid = $value['product_id'];
 								$pname = $value['product_name'];
 								$qty = $value['quantity'];
 								$price = $value['price'];
 								$total_price = $qty*$price;
 								$paid_amount = '';
 								if($pmode == 'Case On Delivery')
 								{
 									$paid_amount = 0;
 								}
 								elseif($pmode == 'Google Pay')
 								{
 									$paid_amount = $total_price;
 								}
 								else
 								{
 									$paid_amount = $total_price;
 								}
 								
 								mysqli_stmt_execute($stmt);	
 								
 								 $product = "select qty from product where pid = $pid";
 					      		 $set_product = mysqli_query($conn,$product);
 					     		 $row = mysqli_fetch_array($set_product);
 					     		 $quantity = $row['qty'] - $qty;
 					     		 $update_product_qty = "UPDATE `product` SET `qty`='$quantity' WHERE pid = $pid";
 					     		 mysqli_query($conn,$update_product_qty);


 					 			 $paid_a = mysqli_query($conn,"SELECT sum(total_price) as total FROM order_master where order_id='$order_id' ");
 								 $row1 = mysqli_fetch_array($paid_a);
 								 $paid_amount_o_detail = "UPDATE `user_order_detail` SET `paid_amount`='".$row1['total']."' WHERE oid = '$order_id'";
 								 mysqli_query($conn,$paid_amount_o_detail);



								 $update_user = "UPDATE `users` SET `address`='".$_POST['address']."',`city`='".$_POST['city']."',`state`='".$_POST['state']."',`pincode`='".$_POST['pincode']."' WHERE uid = '".$uid."' ";
								 mysqli_query($conn,$update_user);
		 					      	
 							}
 						unset($_SESSION['cart']);
 						echo "<script> 
 										alert('Your Order Placed');
 										window.location.href ='cart.php';
 					      </script>";
 					     
 					 
 					}
 					else
 					{
 							echo "<script> 
 										alert('SQL Query prepare Error');
 										window.location.href = 'cart.php';
 					      </script>";
 					}
 				}
 				else
 				{
 					echo "<script> 
 										alert('SQL Error');
 										window.location.href = 'cart.php';
 					      </script>";
 				}
 		
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<title></title>
	<style type="text/css">
		*{
  			box-sizing: border-box;
		}
		body {
  		font-family: Arial;
			background-image: url(image/cool-background.png);
			background-size: cover;
		}
		.row
		{
			width: 100%;
		}
		.row table
		{
			width: 60%;
			background-color: white;
			margin-left: 20%;
			box-shadow: 2px 2px 4px red;
		}
		span
		{
			float: right;
			color: red;
			margin-top: 40px;
			margin-right: 30px;
		}
		.container
		{
			width: 80%;
		}
		.container .field
		{
			margin-top: 10px;
			margin-bottom: 10px;
		}
		input[type = text]
		{
			width : 100%;
			height: 30px;
	 		font-size: 15px;
	 		background-color: silver;
 			border-radius: 5px;
 			border: none;
 			outline: none; 
 			 
		}
		.checkout
		{
			background-color: turquoise;
			color: black;
			padding: 12px 20px;
			margin: 4px 0px;
			border: none;
			text-align: center;
			border-radius: 8px;
			font-size: 17px;
			font-weight: bold;
			width: 80%;
			margin-top: 20px;
			margin-bottom: 60px;
		}
		.checkout:hover{
			background-color:darkcyan;
			color: whitesmoke;
		}
		.container1
		{
			font-size: 16px;
			text-align: left;
			padding: 20px;
		}
		.bill
		{
			font-size: 25px; 
			margin-top: 30px; 
			margin-bottom: 20px;
			font-weight: bold;
			font-style: italic; 
			text-shadow: 2px 2px 4px red;
			background-color: lavenderblush;
			padding: 10px;
		}
		.card
		{
			display: none;

		}
	</style>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        var inputValue = $(this).attr("value");
        var targetBox = $("." + inputValue);
        $(".box").not(targetBox).hide();
        $(targetBox).show();
    });
});
</script>


</head>
<body>


  	<div class="bill" align="center"> Billing Address & Payment </div>
  	
  <div class="row">
	<table>
				<form action="" method="POST">
  		<tr>
  			<td colspan="2"> <a href="cart.php"><span class="glyphicon glyphicon-remove"></span></a> </td>
  		</tr>
  		<tr>
  			<td> 
  				<div class="container">

  					<?php 
  						$sel = "select *from users where uid = '".$_SESSION['user_id']."' ";
 								 $set_user = mysqli_query($conn,$sel);
 								 $fetch_user = mysqli_fetch_array($set_user);
 								

  					?>
									<div class="field">
									<label for="fname"><i class="fa fa-user"></i> Full Name</label> <br>
            			<input type="text" id="fname" name="fname" placeholder="John M. Doe" required>
            			</div>
            			<div class="field">
            			<label for="email"><i class="fa fa-envelope"></i> Email</label><br>
            			<input type="text" id="email" name="email"  value="<?php echo $fetch_user['email'];?>">
            			</div>
            			<div class="field">
            			<label for="adr"><i class="fa fa-address-card-o"></i> Address</label> <br>
           				<input type="text" id="adr" name="address" value="<?php echo $fetch_user['address'];?>" required>
            			</div>
            			<div class="field">
            			<label for="city"><i class="fa fa-institution"></i> City</label> <br>
            			<input type="text" id="city" name="city"value="<?php echo $fetch_user['city'];?>" required>
            			</div>
              			<div class="field">
                		<label for="state">State</label><br>
                		<input type="text" id="state" name="state" value="<?php echo $fetch_user['state'];?>" required>
              			</div>
              			<div class="field">
                		<label for="Pincode">PinCode</label><br>
                		<input type="text" id="Pincode" name="pincode" value="<?php echo $fetch_user['pincode'];?>" required>
              			</div>
              		</div>
			</td>
  			<td>
  				<div class="container1">
        				<div align="center" style="font-size: 18px;"><b> Payment mode </b></div>
        				<hr>
        				<div> <input type="radio" name="pmode" value="Case On Delivery"> Case On Delivery </div>
        				<div> <input type="radio" name="pmode" value="Google Pay"> Google Pay </div>
        				<div> <input type="radio" name="pmode" value="Credit/Debit card"> Credit/Debit card </div>			
        	</div>
  			</td>
  		</tr>
  		<tr>
  			<td colspan="2" align="center"> <div class="check"> <button type="submit" class="checkout" name="checkout"> Continue to CheckOut </button></div>	</td>
  		</tr>
  	</form>
  	</table>
  </div>
</body>
</html>