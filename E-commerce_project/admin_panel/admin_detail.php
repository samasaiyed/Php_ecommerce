<?php 

include_once 'connection.php';
$result = mysqli_query($conn,"SELECT * FROM admin");
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
		.section3 .insert
		{
			margin-top: 15px ;
		}
		.section3 .insert a
		{
			text-decoration: none;
			color: black;
			font-size: 18px;
			background-color: red;
			color: white;
			padding: 15px;
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
		.action a{
			text-decoration: none;
			color: white;
			font-size: 20px;
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
		<div class="user" align="center"> ADMIN DETAILS </div>
		<div>
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
						<th> Admin id </th>
						<th> Admin Name </th>
						<th> Email </th>
						<th> Password </th>
						<th>date</th>
						<th colspan="2" align="center"> Action </th>
						</tr>
						<?php

						while($row = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $row["aid"]; ?></td>
							<td><?php echo $row["aname"]; ?></td>
							<td><?php echo $row["email"]; ?></td>
							<td><?php echo $row["password"]; ?></td>
							<td><?php echo $row["date"]; ?></td>
							<td>
								<button class="action">
									<a href="admin_update.php?aid=<?php echo $row["aid"]; ?>"> Edit </a>
						    	</button>
							</td>
							<td>
								<button class="action">
									<a href="admin_delete.php?aid=<?php echo $row["aid"]; ?>"> Delete </a>
								</button>
							</td>
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

