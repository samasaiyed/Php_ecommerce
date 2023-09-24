<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	
	<title></title>
	<style type="text/css">
		.section3
		{
			margin-top: 20px;
			background-color: cyan;
			width: 100%;
			float: right;
			background-color: lavender;
		}
		.section3 .card table th
		{
			padding: 5px; 
			background-color: gray;
			color: maroon;
			font-weight: bold;
			font-size: 20px;
		}
		.section3 .card table td
		{
			font-size: 18px;
		}
		.action
		{
			background-color: purple;
			padding: 5px;
		}
		.section3 .user
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		.section3 .user a
		{

			text-decoration: none;
			float: left;
			color: white;
		}
	</style>
</head>
<body>

<?php 
include_once 'connection.php';

$query = "SELECT  users.uid,users.username,user_order_detail.full_name,users.email,users.mobile_number,user_order_detail.oid,user_order_detail.address,user_order_detail.city,user_order_detail.state,user_order_detail.pincode,user_order_detail.payment_mode FROM users INNER JOIN user_order_detail ON user_order_detail.uid = users.uid  ";
$result = mysqli_query($conn,$query);
?> 
	<section class="section3">
		<div class="user" align="center"> <a href="admin_order.php"> Back </a> ORDER DETAILS </div>
		<div> 
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
						<th> order id </th>
						<th> User id </th>
						<th> name </th>
						<th> pincode </th>
						<th> payment mode </th>
						<th> orders </th>
						<th> view user </th>
						</tr>
						<?php

						while($row = mysqli_fetch_array($result))
						{
						?>
						<tr>
							<td><?php echo $row["oid"]; ?></td>
							<td><?php echo $row["uid"]; ?></td>
							<td><?php echo $row["full_name"]; ?></td>
							<td><?php echo $row["pincode"]; ?></td>
							<td><?php echo $row["payment_mode"]; ?></td>

							<td>
								<table border="1" align="center" style="background-color: lavender; width: 100%;">
										<tr>
											<th> product id </th>
											<th> product name </th>
											<th> quantity </th>
											<th> price </th>
											<th> total price </th>
											<th> date </th>
											<th> status </th>
										</tr>
										<?php
										$result1 = mysqli_query($conn,"SELECT * FROM order_master WHERE order_id = '".$row["oid"]."'");
										while($row1 = mysqli_fetch_array($result1))
										{
											//$row1['total_price'] = $row1["qty"]*$row1["price"];
										?>
										<tr>
											<td><?php echo $row1["pid"]; ?></td>
											<td><?php echo $row1["pname"]; ?></td>
											<td><?php echo $row1["qty"]; ?></td>
											<td><?php echo $row1["price"]; ?></td>
											<td><?php echo $row1["total_price"]; ?></td> 
											<td><?php echo $row1["date"]; ?></td>
											<td align="center" >

												<?php  if($row1['status'] == 'pending') { 
												echo '<p> <a href="admin_order_status.php?pid='.$row1['pid'].'&status=confirm">' ?><button style="background-color: maroon; color: white; padding: 5px" > pendinig </button> <?php '</a> </p>';
								 				} 
									 			else{ 
												echo  '<p> <a href="admin_order_status.php?pid='.$row1['pid'].'&status=pending">' ?><button style="background-color: maroon; color: white; padding: 5px"> confirm </button> <?php '</a> </p>';	
												 } ?>	
							</td>
										</tr>
										<?php } ?>										
								</table>
							</td>
							<td> <a href="view_order_user_detail.php?uid=<?php echo $row["uid"]; ?>"> <button type="submit" style="background-color:purple; color: white; font-weight: bold; font-size: 18px; cursor: pointer;" name="view_user"> View User </button></a> </td>
							
						</tr>
						<?php
						}
						?>
                    </table>
			</div>
	    </div>
	</section>
	
	</body>
</html>

