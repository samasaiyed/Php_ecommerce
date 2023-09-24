<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="">
	<title> Admin home page </title>
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<link rel="stylesheet" type="text/css" href="admin.css">
	<style type="">
		body{
			background-color: lavenderblush;
			margin: 0;
			padding: 0;
		}
		.section1{
			background-color: purple;
			width: 20%;
			height: 1000px; 
			display: inline-block;
			float: left;
			position: fixed;
		}
		.logo{
			color: white;
			font-size: 30px;
			text-shadow: 4px 2px 5px red;
			font-family: cursive;
			text-align: center;
		}
		.links a{
			text-decoration: none;
			color: black;
			font-weight: bold;
			display: block;
			font-size: 21px;
			margin: 10px;
			padding: 10px;
			border-radius: 15px;
			background-color: lavenderblush;
			text-align: center;
		}
		.links a:hover{
			background-color : indianred;
			color: white;
			transition: 0.9s ease;
		}
		.section2 
		{
			float: right;
			font-size: 20px;
			background-color: lightyellow;
			width: 80%;
			font-weight: bold;
			font-family: sans-serif;
			margin-top: 20px;
		
		}
		.section2  p 
		{
			float: right;
			margin-right: 30px;
			text-decoration: none;
		}
		.section2 p a{
			margin-left: 10px;
			text-decoration: none;
		}
		.section2 p a:hover
		{
			color: red;
		}
		.logo .web
		{
			text-decoration: none;
			color: white;
		}
	</style>
</head>
<body>
	<section class="section1">
		<span class="logo">
		<p> <a href="homepage.php" class="web"> SKY fashion </a> </p>			
		</span>
		<span class="links">
			<p align="center" style="font-size: 20px;color: white;"> E-commerce website </p>
			<a href="dashboard.php"> Dashboard </a>
			<a href="admin_detail.php"> Admin </a> 
			<a href="admin_user.php"> User </a>
			<a href="admin_category.php"> Category </a>
			<a href="admin_product_detail.php"> Product </a>
			<a href="admin_order.php"> Order </a>
			<a href="admin_product_rating.php"> Rating </a>
			<p align="center" style="font-size: 20px"> <?php date_default_timezone_set("Asia/Kolkata"); echo date("l jS \of F Y h:i A") ?></p>
		</span>
	</section>
	<section class="section2">
		 <p class="name">   Welcome <?php echo $_SESSION['admin_name']; ?> 
		     <a href="admin_logout.php"> LogOut <i style='font-size:22px' class='fas'> &#xf011; </i> </a> </p>		 
		     <p class="email"> Email : <?php echo $_SESSION['admin_email']; ?> </p> 												
	</section>
	</body>
</html>

