<?php  
include "connection.php";
		if(isset($_POST['add']))
		{
			$brand = $_POST['brand'];


         		$query = "INSERT INTO brand(brand) VALUES ('$brand')";
                $res = mysqli_query($conn,$query);
                if($res)
                {
                    $_SESSION['msg'] =  "inserted successfully";
                    header("location:admin_brand.php");
                }
                else
                {
                    echo "details are not inserted." .mysqli_error($conn);
                }


		}


$sel = "select *from brand";
$result = mysqli_query($conn ,$sel);

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
		.action a
		{
			text-decoration: none;
			color: white;
		}
		.section3 .user
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		.cat
		{
			margin-top: 20px;
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;

		}
		.cat-option
		{
			margin-top: 20px;
			font-size: 18px;
		}
		input[type = text]
		{
			font-size: 17px;
		}
		.add
		{
			font-size: 18px;
			background-color: purple;
			color: white;
			font-weight: bold;
			border-radius: 6px;
			padding: 10px;
			margin-top: 10px;
			margin-bottom: 50px;
		}
		.user a
		{
			text-decoration: none;
			float: left;
			color: white;
		}
	</style>
</head>
<body>
	<?php include "index.php" ?>

	

	<section class="section3">
		
		<div class="user" align="center"><a href="admin_product_detail.php"> Back </a> BRAND DETAILS </div>
		<div> 
			<form name="category_add" method="post">
                    <div class="cat" align="center">  ADD NEW BRAND  </div>
                    <div class="cat-option" align="center">
						<b> BRAND NAME </b>
						<input type="text" name="brand" placeholder="Enter Brand">
						<br>
						<input type="submit" name="add" class="add" value="ADD">

						<?php
						if(isset($_SESSION['msg']))
						{
							echo $_SESSION['msg'];
						}
						?> 
					</div>
					</form>
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
						<th> brand id </th>
						<th> brand Name </th>
						<th colspan="2"> Action </th>
						</tr>
						<?php

						while($row = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $row["bid"]; ?></td>
							<td><?php echo $row["brand"]; ?></td>
							
								<td>
								<button class="action">
									<a href="admin_brand_update.php?bid=<?php echo $row["bid"]; ?>"> Edit </a>
						    	</button>
								</td>
							<td>
								<button class="action">
									<a href="admin_brand_delete.php?bid=<?php echo $row["bid"]; ?>"> Delete </a>
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

