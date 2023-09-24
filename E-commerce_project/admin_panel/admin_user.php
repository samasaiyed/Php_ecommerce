<?php 

include_once 'connection.php';
$result = mysqli_query($conn,"SELECT * FROM users");
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
			width: 80%;
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
	</style>
</head>
<body>
	<?php include "index.php" ?>

	<section class="section3">
		<div class="user" align="center"> USER DETAILS </div>
		<div> 
			<div class="card">
					<table border="" align="center" style="background-color: lavender;" >
						<tr>
						<th> User id </th>
						<th> User Name </th>
						<th> Email </th>
						<th> Mobile number </th>
						<th> Password </th>
						<th> Date </th>
						</tr>
						<?php

						while($row = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $row["uid"]; ?></td>
							<td><?php echo $row["username"]; ?></td>
							<td><?php echo $row["email"]; ?></td>
							<td><?php echo $row["mobile_number"]; ?></td>
							<td><?php echo $row["password"]; ?></td>
							<td><?php echo $row["date"]; ?></td>

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

