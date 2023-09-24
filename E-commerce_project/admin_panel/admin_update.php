<?php
include 'connection.php';

if(isset($_POST['update']))
{
	$update = "UPDATE admin set aname='" . $_POST['aname'] . "',email ='" . $_POST['email'] . "', password ='" . $_POST['password'] . "'  WHERE aid='" . $_POST['aid'] . "' ";
	$q = mysqli_query($conn,$update);

	if($q)
	{
		header("Location:admin_detail.php");
	}
	else
	{
		echo "couldn't execute $update. ".mysqli_error($conn);
		header("Location:admin_update.php");
	}	

}

	$sel = "SELECT * FROM admin WHERE aid='" . $_GET['aid'] . "'";
	$result = mysqli_query($conn,$sel);
	$row= mysqli_fetch_array($result);

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
		.back
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		.back a
		{
			text-decoration: none;
			float: left;
			color: white;
		}
	</style>
</head>
<body>
	<?php include "index.php"?>

	<section class="section3">
		<div>
			<div class="card">
					<table border="" align="center">
					 <div align="center" class="back"> <a href="admin_detail.php"> Back </a> UPDATE ADMIN DATA </div>
						<form name="form_update" method="post">
						<tr>
							<td> Admin id </td>
							<td> 
								<input type="hidden" name="aid"  value="<?php echo $row['aid']; ?>">
								<input type="text" name="aid" value="<?php echo $row["aid"]; ?>"> 
							</td>
						</tr>
						<tr>
							<td> Admin Name </td>
							<td> <input type="text" name="aname" value="<?php echo $row['aname']; ?>"> </td>
						</tr>
						<tr>
							<td> Email Id </td>
							<td> <input type="text" name="email" value="<?php echo $row['email']; ?>"> </td>
						</tr>
						<tr>
							<td> Password </td>
							<td> <input type="text" name="password" value="<?php echo $row['password']; ?>"></td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="submit" name="update" value="Update Data">
							</td>
						</tr>
					</form>
                    </table>
			</div>
	    </div>
	</section>	
	</body>
</html>

