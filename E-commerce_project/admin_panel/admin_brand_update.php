<?php  
include "connection.php";
		if(isset($_POST['update']))
		{
         	$update = "UPDATE brand SET brand='".$_POST['brand']."' WHERE bid='".$_POST['bid']."' ";
            $q = mysqli_query($conn,$update);

		if($q)
		{
			header("Location:admin_brand.php");
		}
		else
		{
			echo "couldn't execute $update. ".mysqli_error($conn);
			header("Location:admin_brand_update.php");
		}	

		}

	$sel = "SELECT * FROM brand WHERE bid='" . $_GET['bid'] . "'";
	$result = mysqli_query($conn,$sel);
	$row= mysqli_fetch_array($result);

?> 


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="">
	<title></title>
	<link rel="stylesheet" type="text/css" href="admin.css">
	<style type="">
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
		.section3 .card table th{
			font-size: 20px;
			color: maroon;
			background-color: gray;
			padding: 15px;

		}
		.section3 .card table td
		{
			font-size: 19px;
			padding: 6px;
			font-weight: bold;
		}
		.section3 .card table td input[type = text]
		{
			
			font-size: 18px;
		}
		input[type = submit]
		{
			background-color: maroon;
			padding: 10px;
			font-weight: bold;
			color: white;
			cursor: pointer;
			border-radius: 8px;
			font-size: 16px;
			width: 100%;
			border: none;
		}
	</style>
</head>
<body>
	<?php include 'index.php'; ?>
	<section class="section3">
		<div class="card">
			<table border="1" align="center">
				<form name="category_update" method="post">		
							<tr> <th colspan="2"> UPDATE BRAND </th></tr>
							<tr>
								<td> Brand id </td>
								<td> <input type="text" name="bid" value="<?php echo $row["bid"]; ?>"></td>
							</tr>
							<tr>
								<td> Brand name  </td>
								<td> <input type="text" name="brand" value="<?php echo $row["brand"]; ?>"></td>
							</tr>
							<tr>
								<td colspan="2"> <input type="submit" name="update" value="UPDATE BRAND"> </td>
							</tr>
				</form>
			</table>
		</div>
	</section>
	</body>
</html>
