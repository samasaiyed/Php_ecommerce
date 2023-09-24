<?php  session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> Log In </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body{
	background-image: url(image/cool-background.png);
	background-size: cover;
	background-repeat: no-repeat;
	font-family: cursive;
}

div{
	box-sizing: border-box;
	border-radius: 20px;
	position: absolute;
	top: 50%;
    left: 50%;
	transform: translate(-50%,-50%);
	width: 500px;
    height: 400px;
    padding: 60px 25px;
    border-style: solid;
	border-color: black;
	background-color: white;

}	
h2{
	text-align: center;
	text-shadow: 2px 2px 5px red;
	margin-top: -20px;
	margin-bottom: 50px;
	font-weight: bold;
}
input[type=text],input[type=E-mail],input[type=password]
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

}
input[type=submit]:hover{
	background-color:darkcyan;
	color: whitesmoke;
}

a{
	color: red;
    font-size: 15px;
}
span{
	float: right;
	margin-top: -30px;
}

</style>  
</head>
<body>
<?php
include "connection.php";
if(isset($_POST['submit']))
{
	$email = $_POST['email'];
	
		$sql = "SELECT * FROM users WHERE email = '$email'";
		$sql_run = mysqli_query($conn,$sql);

		$emailcount = mysqli_num_rows($sql_run);

		if($emailcount)
		{
			$row = mysqli_fetch_array($sql_run);
			$username = $row['username'];
			$uid = $row['uid'];

			$subject = "Recover Password";
			$body = "Hii , $username. Click here to reset your password http://localhost/program/E-commerce_project/reset_password.php?uid=$uid";
			$sender_email = "From: samasaiyed7305@gmail.com";

			if(mail($email,$subject,$body,$sender_email))
			{
				$_SESSION['e'] = "check your email to reset password";
				header("location:login.php");
			}
			else
			{
				$_SESSION['msg'] = "E-mail sending failed".mysqli_error($conn);
			}
		}
		else
		{
			$_SESSION['msg'] = "No E-mail Found.".mysqli_error($conn);
		}
			
} 
?>
	
			
	<form name = "login" action="" method="post"> 
		<div class="loginbox">
			<a href="homepage.php">
          		<span class="glyphicon glyphicon-remove"></span>
        	</a>
			<h2>
				Send E-mail to recover your password
			</h2>

			<b style = "font-size: 20;">E-mail :</b> <br>
			<input type="E-mail" name="email" placeholder="E-mail address" /><br>

		

			<p style="color: red; font-weight: bold;"> 
				<?php 
					if(isset($_SESSION['msg']))
					{
						echo $_SESSION['msg'];
						unset($_SESSION['msg']);
					}

				?>
	        </p> 
			<input type="submit" name="submit" value="Send E-mail">
										<br><br>
			
			<b> Have An Account ? </b> &nbsp;
			<a class="signuphere" href='login.php'> <b>  login here </b> </a>	

		</div>		
	</form>


</body>
</html>