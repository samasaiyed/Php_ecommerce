<?php 

include_once 'connection.php';
$result = mysqli_query($conn,"SELECT * FROM user_order_detail");

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
		.section3 .user
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		.section3 .card button
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<?php include "index.php" ?>

	<section class="section3">
		<div class="user" align="center"> ORDER DETAILS </div>
		
			<div class="card" align="center">
				<a href="admin_order_detail.php"> <button type="submit"> Show Orders </button> 
		    </div>
		
	</section>
</body>
</html>

