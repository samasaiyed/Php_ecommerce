<?php  session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> Log In </title>
<style type="text/css">
body{
	background-color: lavender;
	background-size: cover;
	background-repeat: no-repeat;
	font-family: cursive;
}

div{
	box-sizing: border-box;
	border-radius: 5px;
	position: absolute;
	top: 50%;
    left: 50%;
	transform: translate(-50%,-50%);
	width: 320px;
    height: 450px;
    padding: 60px 25px;
    border-style: solid;
	border-color: black;
	background-color: white;

}	
h1{
	text-align: center;
	margin-bottom: 10px;
	font-weight: bold;
}
input[type=E-mail],input[type=password]
{
	width : 100%;
	height: 30px;
 	font-size: 15px;
 	background-color: silver;
 	border-radius: 5px;
 	border: none;
 	outline: none; 
 	margin-bottom: 10px; 
}

input[type=submit]{
	background-color: turquoise;
	color: black;
	padding: 12px 20px;
	margin: 4px 0px;
	border: none;
	text-align: center;
	text-decoration: none;
	border-radius: 8px;
	display: inline-block;
	font-size: 17px;
	font-weight: bold;
	width: 100%;
	margin-bottom: 20px;
}
input[type=submit]:hover{
	background-color: darkcyan;
	color: whitesmoke;
}

</style>  
</head>
<body>
	<?php
include "connection.php";

if(isset($_POST['submit']))
{
	$email = $_POST['email'];
	$pass = $_POST['password'];

	if(empty($email) && empty($pass))
	{
		$_SESSION['e'] = "Please Fill the Field!";
	}
	else
	{
		$sql = "SELECT * FROM admin WHERE email = '$email' and password = '$pass' ";
		$sql_run = mysqli_query($conn,$sql);
		$row = mysqli_fetch_array($sql_run);

		if(is_array($row))
		{
			$_SESSION['admin_email'] = $_POST['email'];
			$_SESSION['admin_name'] = $row['aname'];
			header("location:dashboard.php");
		}
		else
		{
			$_SESSION['e'] = "Invalid email or password";
		}
	}
} 
?>
	
			
	<form name = "login" action="" method="post"> 
		<div class="loginbox">
			<h1 style="text-shadow: 2px 2px 4px red;">
				Admin LogIn
			</h1>
			

			<b style = "font-size: 20;">E-mail :</b> <br>
			<input type="E-mail" name="email" placeholder="Enter your E-mail address" /><br>

			<b style="font-size : 20 ;">Password : </b> <br>
			<input type="Password" name="password" placeholder="Enter Password" /><br>

			<p style="color: red; font-weight: bold;"> 
				<?php 
					if(isset($_SESSION['e']))
					{
						echo $_SESSION['e'];
						unset($_SESSION['e']);
					}

				?>
	        </p> 
			<input type="submit" name="submit" value="Log In">
			<p> don't have an account? <a href="Admin_registration.php"> Register </a>
		</div>		
	</form>


</body>
</html>

