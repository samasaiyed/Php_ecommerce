<?php 
include 'connection.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="">
		.section3
		{
			margin-top: 20px;
			background-color: cyan;
			width: 80%;
			float: right;
			background-color: lavender;
		}
		button
		{
			border-radius: 4px;
			padding: 20px;
			width: 20%;
			margin: 20px;
			font-weight: bold;
			font-size: 19px;
			height: auto;
			background-color: lavenderblush;
			border: none;
			box-shadow: 2px 2px 4px 2px purple;

		}
		button:hover
		{
			border-radius: 4px;
			padding: 20px;
			width: 20%;
			margin: 20px;
			font-weight: bold;
			font-size: 19px;
			height: auto;
			background-color: lightcyan;
			border: none;
			box-shadow: 2px 2px 4px 2px purple;
		}
		button a 
		{
			text-decoration: none;
		}
	</style>
</head>
<body>
<?php include 'index.php';

$user = "select *from users";
$set_user = mysqli_query($conn,$user);
if(isset($set_user))
{
	$count_user = mysqli_num_rows($set_user);
}


$product = "select *from product";
$set_product = mysqli_query($conn,$product);
if(isset($set_product))
{
	$count_product = mysqli_num_rows($set_product);
}


$pending_order = "select *from order_master where status = 'pending' ";
$set_pending_order = mysqli_query($conn,$pending_order);
if(isset($set_pending_order))
{
	$count_pending_order = mysqli_num_rows($set_pending_order);
}

$confirm_order = "select *from order_master where status = 'confirm' ";
$set_confirm_order = mysqli_query($conn,$confirm_order);
if(isset($set_confirm_order))
{
	$count_confirm_order = mysqli_num_rows($set_confirm_order);
}


$category = "select *from category";
$set_category = mysqli_query($conn,$category);
if(isset($set_category))
{
	$count_category = mysqli_num_rows($set_category);
}

$brand = "select *from brand";
$set_brand = mysqli_query($conn,$brand);
if(isset($set_brand))
{
	$count_brand = mysqli_num_rows($set_brand);
}

?>
<section class="section3">

	<!--	<div class="user"> <button type="submit" class="user_btn"> <?php //echo $count_user; ?> Users </button> </div>

		<div class="product"> <button type="submit" class="product_btn"> <?php //echo $count_product; ?> Products </button> </div>

		<div class="pending_order"> <button type="submit" class="pending_btn"> <?php// echo $count_pending_order; ?> Pending orders </button> </div>

		<div class="confirm_order"> <button type="submit" class="confirm_btn"> <?php //echo $count_confirm_order; ?> Confirm orders </button> </div>

		<div class="category"> <button type="submit" class="category_btn"> <?php //echo $count_category; ?> Categories </button> </div>

		<div class="brand"> <button type="submit" class="brand_btn"> <?php //echo $count_brand; ?> Brands </button> </div>-->
	
		<button class="user_btn"> <a href="admin_user.php"> <i class='fas fa-user-alt' style='font-size:36px;float: left;'></i><?php echo $count_user; ?> <br>Users </a> </button> 
		<button class="product_btn" > <a href="admin_product_detail.php"> <i class='fas fa-magic' style='font-size:36px;float:left;'></i><?php echo $count_product; ?> <br> Products </a> </button>
		<button class="pending_btn"> <a href="admin_pending_order.php"><i class='fas fa-arrow-down' style='font-size:36px;float:left;'></i> <?php echo $count_pending_order; ?> <br> Pending orders </a> </button>
		<button class="confirm_btn"> <a href="admin_confirm_order.php"> <i class='fas fa-check-circle' style='font-size:36px;float:left;'></i><?php echo $count_confirm_order; ?> <br> Confirm orders </a> </button>
		<button class="category_btn"> <a href="admin_category.php"> <i class='fas fa-caret-square-down' style='font-size:36px;float:left'></i> <?php echo $count_category; ?> <br> Categories </a></button>
		<button class="brand_btn"> <a href="admin_brand.php"> <i class='fas fa-seedling' style='font-size:36px;float: left;'></i><?php echo $count_brand; ?> <br> Brands </a></button> 
</section>
</body>
</html>