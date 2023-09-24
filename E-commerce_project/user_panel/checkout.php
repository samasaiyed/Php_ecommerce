<?php 
include 'connection.php';


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
	</style>
</head>
<body>


  	<div class="bill" align="center"> Billing Address & Payment </div>
  	
  <div class="row">
	<table>
				<form action="" method="POST">
  		<tr>
  			<td colspan="2"> <a href="cart_product.php"><span class="glyphicon glyphicon-remove"></span></a> </td>
  		</tr>
  		<tr>
  			<td> 
  				<div class="container">
									<div class="field">
									<label for="fname"><i class="fa fa-user"></i> Full Name</label> <br>
            			<input type="text" id="fname" name="fname" placeholder="John M. Doe" required>
            			</div>
            			<div class="field">
            			<label for="email"><i class="fa fa-envelope"></i> Email</label><br>
            			<input type="text" id="email" name="email" placeholder="john@example.com" required>
            			</div>
            			<div class="field">
            			<label for="adr"><i class="fa fa-address-card-o"></i> Address</label> <br>
           				<input type="text" id="adr" name="address" placeholder="542 W. 15th Street" required>
            			</div>
            			<div class="field">
            			<label for="city"><i class="fa fa-institution"></i> City</label> <br>
            			<input type="text" id="city" name="city" placeholder="New York" required>
            			</div>
              			<div class="field">
                		<label for="state">State</label><br>
                		<input type="text" id="state" name="state" placeholder="NY" required>
              			</div>
              			<div class="field">
                		<label for="Pincode">PinCode</label><br>
                		<input type="text" id="Pincode" name="pincode" placeholder="10001" required>
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