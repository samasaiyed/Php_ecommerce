<?php  session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> Log In </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	width: 320px;
    height: 450px;
    padding: 60px 25px;
    border-style: solid;
	border-color: black;
	background-color: white;

}	
h1{
	text-align: center;
	text-shadow: 2px 2px 5px red;
	margin-top: -20px;
	margin-bottom: 10px;
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

.submit{
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
.submit:hover{
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
	$pass = $_POST['password'];

	if(empty($email) && empty($pass))
	{
		$_SESSION['e'] = "Please Fill the Field!";
	}
	else
	{
		$sql = "SELECT * FROM users WHERE email = '$email' and password = '$pass' ";
		$sql_run = mysqli_query($conn,$sql);
		$row = mysqli_fetch_array($sql_run);

		$in = mysqli_num_rows($sql_run);

		if($in == 1)
		{
			$_SESSION['user_email'] = $_POST['email'];
			$_SESSION['user_name'] = $row['username'];
			$_SESSION['user_id'] = $row['uid'];

			
			
					echo "<script> 
					alert('You Have Successfully Logged In !');
					window.location.href = 'homepage.php';
					
				  	</script>";
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
			<a href="homepage.php">
          		<span class="glyphicon glyphicon-remove" onclick="self.close();"></span>
        	</a>
			<h1 >
				LogIn
			</h1>

			<b style = "font-size: 20;">E-mail :</b> <br>
			<input type="E-mail" name="email" placeholder="E-mail address" /><br>

			<b style="font-size : 20 ;">Password : </b> <br>
			<input type="Password" name="password" placeholder="Enter Password" /><br><br>

			<p style="color: red; font-weight: bold;"> 
				<?php 
					if(isset($_SESSION['e']))
					{
						echo $_SESSION['e'];
						unset($_SESSION['e']);
					}

				?>
	        </p> 
			<button type="submit" name="submit" class="submit"> Log In
					</button><br><br>					

			<a href="send_email_password.php"> forget password? </a> 
			<br>

			<b> Don't Have An Account ? </b> &nbsp;
			<a class="signuphere" href='registration.php'> <b>  Register </b> </a>	

		</div>		
	</form>


</body>
</html>