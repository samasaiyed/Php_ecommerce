<?php  
include "connection.php";
		if(isset($_POST['add']))
		{
			$cat = $_POST['category'];


         		$query = "INSERT INTO category(category) VALUES ('$cat')";
                $res = mysqli_query($conn,$query);
                if($res)
                {
                    echo "inserted successfully";
                    header("location:admin_category.php");
                }
                else
                {
                    echo "details are not inserted." .mysqli_error($conn);
                }


		}


$sel = "select *from category";
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
			font-size: 18px;

		}
		.cat
		{
			margin-top: 10px;
			font-size: 20px;
			padding: 10px;
			background-color: maroon;
			font-weight: bold;
			color: white;

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
		}
		.user
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
		
		<div class="user" align="center"> CATEGORY DETAILS </div>
		<div> 
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
						<th> category id </th>
						<th> category Name </th>
						<th colspan="2"> Action </th>
						</tr>
						<?php

						while($row = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $row["cid"]; ?></td>
							<td><?php echo $row["category"]; ?></td>
							
								<td>
								<button class="action">
									<a href="admin_update_category.php?cid=<?php echo $row["cid"]; ?>"> Edit </a>
						    	</button>
								</td>
							<td>
								<button class="action">
									<a href="admin_delete_category.php?cid=<?php echo $row["cid"]; ?>"> Delete </a>
								</button>
							</td>
							
						
						</tr>
						<?php
						}
						?>
                    </table>

                    <form name="category_add" method="post">
                    <div class="cat" align="center">  ADD CATEGORY  </div>
                    <div class="cat-option" align="center">
						<b> Category </b>
						<input type="text" name="category" placeholder="enter category">
						<br>
						<input type="submit" name="add" class="add" value="ADD"> 
					</div>
					</form>

					
			</div>
	    </div>
	</section>
	
	</body>
</html>

