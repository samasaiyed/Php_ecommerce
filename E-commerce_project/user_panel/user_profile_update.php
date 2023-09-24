<?php  
include "connection.php";
		if(isset($_POST['update']))
		{
         	$update = "UPDATE users SET username='".$_POST['name']."',email='".$_POST['email']."',mobile_number='".$_POST['mno']."',address='".$_POST['address']."',city='".$_POST['city']."',state='".$_POST['state']."',pincode='".$_POST['pincode']."' WHERE uid='".$_GET['uid']."' ";
            $q = mysqli_query($conn,$update);

		if($q)
		{
			echo "<script> 
 										alert('Profile is updated successfully');
 										window.location.href ='homepage.php';
 					      </script>";
		}
		else
		{
			echo "couldn't execute $update. ".mysqli_error($conn);
			header("Location:user_profile_update.php");
		}	

		}

	$sel = "SELECT * FROM users WHERE uid='" . $_GET['uid'] . "'";
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
		.container
		{
			box-shadow: 4px 4px 8px red;
			padding: 10px;
		}
		.table .container
		{
			width: 400px;
			padding: 7px;
			background-color: lavenderblush;
			text-align: left;
		}
		.container-box
		{
			padding: 20px;
		}
		input[type = text]
		{
			border: none;
    		outline: none;
   			height: 30px;
    		width : 100%;
    		font-size: 15px;
    		background-color: silver;
    		border-radius: 5px;
    		margin-bottom: 10px;    
		}
		textarea
		{
			border: none;
    		outline: none;
    		width : 100%;
    		font-size: 15px;
    		background-color: silver;
    		border-radius: 5px;
    		margin-bottom: 10px;    
		}
		input[type = submit]
		{
			background-color: turquoise;
			padding: 10px;
			font-weight: bold;
			color: black;
			cursor: pointer;
			border-radius: 8px;
			font-size: 16px;
			width: 80%;
			border: none;
		}
		.back
		{
			margin-top: 20px;
			font-size: 21px;
			background-color: purple; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		
	</style>
</head>
<body>
	<?php include"header.php"?>

<!--<div align="center" style="margin-top: 25px; background-color: purple; padding: 10px; color: white;"><b> UPDATE PROFILE </b></div>-->

<div align="center" class="table" style="padding: 20px;margin-top: 40px;">
				<form name="category_update" method="post">
					<div class="container">
						<div class="container-box">
							<h1 style="text-shadow: 2px 2px 4px red;text-align: center;
								margin-bottom: 10px;font-weight: bold;"> Update	Profile	</h1>

						<div> <input type="hidden" name="uid" value="<?php echo $row["uid"]; ?>"> </div>
						<div> <b> Name : </b> <br>
							  <input type="text" name="name" value="<?php echo $row["username"]; ?>">
						</div>
						<div> <b> E-mail : </b> <br>
							  <input type="text" name="email" value="<?php echo $row["email"]; ?>">
						</div>
						<div> <b> Mobile numbers : </b>  <br>
							  <input type="text" name="mno" value="<?php echo $row["mobile_number"]; ?>">
						</div>
						<div> <b> Address : </b><br>
							  <textarea name="address"><?php echo $row["address"]; ?> </textarea> 
						</div>
						<div> <b> City : </b> <br>
							  <input type="text" name="city" value="<?php echo $row["city"]; ?>">
					    </div>
					    <div> <b> State : </b><br>  
					    	  <input type="text" name="state" value="<?php echo $row["state"]; ?>">
					    </div>
					    <div> <b> Pincode : </b> <br> 
					    	   <input type="text" name="pincode" value="<?php echo $row["pincode"]; ?>">
					    </div>
					    <div align="center" style="margin-top:30px"> <input type="submit" name="update" value="UPDATE"> </div> 
					</div>
					</div>
				</form>
		
		</div>
	</body>
</html>
