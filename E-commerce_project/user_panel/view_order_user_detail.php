<?php 

include_once 'connection.php';

$query = "SELECT distinct users.uid,users.username,users.email,users.mobile_number,user_order_detail.address,user_order_detail.city,user_order_detail.state,user_order_detail.pincode FROM users INNER JOIN user_order_detail ON user_order_detail.uid = users.uid where users.uid = '".$_GET['uid']."' ";
$result = mysqli_query($conn,$query);
?> 

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
			padding: 10px; 
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


	<section class="section3">
		<div class="user" align="center"> <a href="admin_order_detail.php"> Back </a> ORDER DETAILS </div>
		<div> 
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
							<th> user id </th>
							<th> name </th>
							<th> email </th>
							<th> mobile no </th>
							<th> address </th>
							<th> city </th>
							<th> state </th>
							<th> pincode </th>
						
						</tr>
						<?php

						while($row = mysqli_fetch_array($result))
						{
						?>
						<tr>
							<td><?php echo $row["uid"]; ?></td>
							<td><?php echo $row["username"]; ?></td>
							<td><?php echo $row["email"]; ?></td>
							<td><?php echo $row["mobile_number"]; ?></td>
							<td><?php echo $row["address"]; ?></td>
							<td><?php echo $row["city"]; ?></td>
							<td><?php echo $row["state"]; ?></td>
							<td><?php echo $row["pincode"]; ?></td>
						
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

