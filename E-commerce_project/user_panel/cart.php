<?php session_start();

if(isset($_POST['purchase']))
{
	if(isset($_SESSION['user_email']) && isset($_SESSION['user_id']))
	{
		$total_price = $_POST['total_price'];
		header("location:purchase.php");
	}
	else
	{
		header("location:login.php");
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> Shopping Cart </title>
	<style type="text/css">
		body
		{
			box-sizing: border-box;
			background-image: url(image/cool-background.png);
			background-size: cover;
			margin: 0;
			padding: 0;
		}
		.text
		{
			font-size: 30px; 
			margin-top: 30px; 
			font-weight: bold;
			font-style: italic; 
			text-shadow: 2px 2px 4px red;
			background-color: lavenderblush;
			padding: 10px;
		}
		.container
		{
			
			width: 100%;
		}
		.table
		{
			float: left;
			width: 60%;
			background-color: white;
			padding: 30px;
			margin-left: 30px;
			margin-top: 30px;
			box-shadow: 2px 2px 4px red;
		}
		.table .tr td
		{
			/*margin-right: 50px;*/
			color: grey;
			padding-right: 15px;
			padding-left: 15px;
		}
		.container .table .cart_item td
		{
			padding-right: 15px;
			padding-left: 15px;
		}
		.container .table .cart_item td .remove
		{
			padding: 4px;
			float: center;
			background-color: purple;
			color: white;
			border-radius: 4px;
		}
		.total-discount
		{
			float: right;
			width: 20%;
			background-color: white;
			padding: 30px;
			margin-right: 30px;
			margin-top: 30px;
			height: 200px;
			box-shadow: 2px 2px 4px red;
		}
		.button .purchase
		{
			width: 80%;
			padding: 9px;
			font-size: 16px;
			font-weight: bold;
			background-color: purple;
			color: white;
			margin-top: 10px;
			margin-bottom: 10px;
			border: none;
		}
		.button .purchase:hover
		{
			background-color: lavenderblush;
			color: black;
			transition: 0.7s ease;
			box-shadow: 2px 2px 4px purple;
		}
		.button .continue
		{
			width: 80%;
			padding: 8px;
			font-size: 16px;
			font-weight: bold;
			background-color: purple;
			color: white;
			margin-top: 10px;
			margin-bottom: 15px;
			border: none;
		}
		.button .continue:hover
		{
			background-color: lavenderblush;
			color: black;
			transition: 0.7s ease;
			box-shadow: 2px 2px 4px purple;
		}
		.container .Start-shopping
		{
			box-sizing: border-box;
			position: absolute;
			top: 40%;
    		left: 50%;
			transform: translate(-50%,-50%);
			width: 320px;
    		height: 200px;
    		padding: 60px 25px;
			background-color: white;
			text-align: center;
			box-shadow: 3px 3px 4px red;
		}
		.container .Start-shopping .empty-cart
		{
			font-size: 25px;
			font-weight: bold;
			font-family: sans-serif;
		}
		.container .Start-shopping .bstart .start
		{
			margin-top: 20px;
			padding: 10px;
			background-color: purple;
			color: white;
			font-weight: bold;
			font-size: 16px;
			cursor: pointer;
		}
	</style>
</head>
<body>

<div class="text" align="center"> Shopping Cart </div>
<div class="container">
<?php if(isset($_SESSION['cart']) && count($_SESSION['cart']) > 0 && isset($_SESSION['user_id']))
{
?>	
	 <div class="table"> 
	 	<table>
	 		<tr class="tr" >
	 			<td> Product </td>
				<td> Quantity </td>
				<td> Price </td>
				<td> Total price </td>	 			
				<td> Remove Product </td>
	 		</tr>

	 		<?php 
	 		#$discount = 10;
	 		if(isset($_SESSION['cart']))
	 		{
	 			foreach ($_SESSION['cart'] as $key => $value)
	 			{ 
	 				
	 		?>
	 				<tr class="cart_item" >


	 					<td> 
	 						<!--<a href="product_detail.php?pid=<?php echo $value['product_id'];?>"><img src="image\product\<?php echo $value['image'];?>" class="image" width="100" height="100"> </a>-->
	 						<p> <?php echo $value['product_name'];?> </p>
	 						<p style="color: gray;"> Brand : <?php echo $value['brand'];?> </p>
	 					</td>
	 					<td>
	 						<form action="manage_cart.php" method="POST"> 
	 						 	<input type="number" name="change_qty" class="pqty" value="<?php echo $value['quantity']?>" min="1" max="5" onchange="this.form.submit();"> 
	 						 	<input type="hidden" name="pname" value="<?php echo $value['product_name'];?>">
	 						 	<input type="hidden" name="pid" value="<?php echo $value['product_id'];?>">
	 						</form>
	 					</td>
	 					<td> <?php echo $value['price'];?> <input type="hidden" class="pprice" value="<?php echo $value['price'];?>"> </td>
	 					<td class="ptotal" name=total_price>  </td>
	 					<td>
	 						<form action="manage_cart.php" method="POST"> 
	 						    <button type="submit" class="remove" name="remove" > Remove </button> 
	 						    <input type="hidden" name="pname" value="<?php echo $value['product_name'];?>">
	 						</form>
	 					</td>
	 				</tr>
	 		<?php	
	 			}
	 			
	 		}
	 		?>
	 		
	 	</table>
	 </div>
	

	 <div class="total-discount">
	 	<table>
	 		<tr>
	 			<td> <strong> SubTotal : </strong> </td>
	 			<td id="total"> </td>
	 		</tr>
	 		<tr>
	 			<td> <strong> Discount : </strong>  </td>
	 			<td id = discount> </td>
	 		</tr>
	 		<tr>
	 			<td> <strong> Shipping Charges : </strong> </td>
	 			<td id= "shipping"> </td>
	 		</tr>
	 		
	 		<tr>
	 			<td> <strong> Grand Total : </strong> </td>
	 			<td id ='gtotal' name='gtotal'> </td>
	 		</tr>
	 		
	 	</table>
 		<hr>
 		<div class="button" align="center">
 			<form action="" method="POST">
				<div><button type="submit" name="purchase" class="purchase"> Make Purchase </button></div>
 			</form>
 			<div> <a href="homepage.php"><button type="submit" class="continue"> Continue Shopping </button></a></div>
 		</div>
	 </div>
<?php }
else { ?>
	<div class="Start-shopping">
		<div class="empty-cart"> Your Cart is Empty </div>
 		<div class="bstart"> <a href="homepage.php"><button type="submit" class="start"> Start Shopping </button></a></div>
 	</div>
 <?php } ?>

</div>

<script type="text/javascript">

	var t=0;
	var gt=0;
	var g = 0;
	var pprice = document.getElementsByClassName('pprice');
	var pqty = document.getElementsByClassName('pqty');
	var ptotal = document.getElementsByClassName('ptotal');
	var total = document.getElementById('total');
	var gtotal = document.getElementById('gtotal');

	function subtotal()
	{
		let charge;
		let discount;
		t=0;
		gt=0;
		for(i=0;i<pprice.length;i++)
		{
			ptotal[i].innerText=(pprice[i].value)*(pqty[i].value);

			t=t+(pprice[i].value)*(pqty[i].value);

			if (t < 500) 
			{
  				charge = "&#8377 70";
			} 
			else 
			{
 				charge = "0";
 				if(charge == 0)
 				{
 					charge = "FREE";
 				}
			}

			if(t > 999)
			{
				discount = "10 &#37";
			}
			else
			{
				discount = "- &#8377 0  ";
			}

			if(discount == "10 &#37")
			{
				gt = t*(90/100);
				g = gt.toFixed(0);
			}
			else
			{
				if(charge == "&#8377 70")
				{
					gt = t+70;
					g = gt.toFixed(0);
				}
				else
				{
					gt = t;
					g = gt.toFixed(0);
				}
			}
			

		}
		
		document.getElementById("shipping").innerHTML = charge;
		document.getElementById("discount").innerHTML = discount;
		total.innerText=t;
		gtotal.innerText=g;
	}

	subtotal();
</script>
</body>
</html>