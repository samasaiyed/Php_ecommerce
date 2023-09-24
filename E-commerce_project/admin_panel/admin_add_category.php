<?php 

include_once 'connection.php';
if(isset($_POST['add'])) {
	$cat = $_POST['category'];

	$ins = "insert into category(category) values ('$cat')";
	$result = mysqli_query($conn,$ins);

	if($result)
	{
		header("location:admin_category.php");
	}
	else
	{
		echo "cannot execute $ins. " .mysql_error($conn);
	}
}

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
		/*	padding: 10px; */
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
			color: maroon;
			font-weight: bold;
			font-size: 21px;
			padding: 10px;
		}
		.add
		{
			margin-top: 10px;	
		}
		
		.cat-option
		{
			margin: 40px;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<?php include "index.php" ?>

	<section class="section3">
		<div class="add">  ADD CATEGORY </a> 
		<div> 
			<div class="card">
					<div class="cat-option" align="center">
						<b> Category </b>
						<input type="text" name="Category" placeholder="enter category">
						<br>
						<input type="submit" name="add" class="add" value="ADD">
					</div>

			</div>
	    </div>
	</section>
					
	</body>
</html>
