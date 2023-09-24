<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title> Create An Account </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body{
  font-family: cursive;
  	background-color: lavender;
	background-size: cover;
}
.reg{
    position: absolute;
    border-style: solid;
    border-color: black;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    height: 500px;
    padding: 30px 30px;
    box-sizing: border-box;
    background-color: white;   
}
h1{
	text-align: center;
	margin-bottom: 10px;
	font-weight: bold;
}
.sub{
    background-color: turquoise;
	color: black;
	padding: 14px 20px;	
	border: none;
	text-align: center;
	text-decoration: none;
	border-radius: 8px;
	display: inline-block;
	font-size: 17px;
	font-weight: bold;
	width: 100%;
	margin-bottom: 10px;
}
.sub:hover{
	background-color:darkcyan;
	color: whitesmoke;
}
.uname,.email,.mnumber,.pass,.cpass{
    border: none;
    outline: none;
    height: 30px;
    width : 100%;
    font-size: 15px;
    background-color: silver;
    border-radius: 5px;
    margin-bottom: 10px;    
}
span{
	float: right;
	color: red;
	font-size: 20px;
}
</style>
</head>

<body>
	<?php 
include "connection.php";
if(isset($_POST['submit']))
{
	$name = mysqli_real_escape_string($conn,$_POST['username']);
	$email = mysqli_real_escape_string($conn,$_POST['email']);
	$password = mysqli_real_escape_string($conn,$_POST['password']);
	$cpassword = mysqli_real_escape_string($conn,$_POST['cpassword']);

	$email_sel = "select *from admin where email = '$email' " ; 
	$query = mysqli_query($conn,$email_sel);


	$emailcount = mysqli_num_rows($query);

	if($emailcount > 0)
	{
		$_SESSION['error'] = "Email alredy exists";
	}
	else
	{
		if($password === $cpassword)
		{
			if(!empty($name) && !empty($email)  && !empty($password) && !empty($cpassword))
			{
				$insert_que = "INSERT INTO admin(aname,email,password) VALUES ('$name','$email','$password')" ;
				$iquery = mysqli_query($conn,$insert_que);
				$row = mysqli_fetch_array($iquery);
				
				if($iquery)
				{
						$_SESSION['admin_email'] = $row["email"];
						$_SESSION['admin_name'] = $row["aname"];
						header("location:admin_login.php");
				}
			}
		}
		else
		{
			$_SESSION['error'] = "password and confirm password are not matched.";
		}
	}

}
?>
	<div class="reg">
       
	<h1 style="text-shadow: 2px 2px 4px red;"><b> Admin Registration </b></h1>
		<form name="registration" action="" method="post">
			
			<b style="font-size: 22;"> Admin Name : </b> <br>
			<input type="text" class="uname" name="username" placeholder="Enter Your Name" /> <br>
			
			<b style="font-size: 22;"> E-mail : </b> <br>
	    	<input type="text" class="email" name="email" placeholder="Enter Your Email Address" /><br>


			<b style="font-size: 22;"> PassWord : </b> <br>
			<input type="password" class="pass" name="password" placeholder="Password"/><br> 
			
			<b style="font-size: 22;">Confirm PassWord : </b> <br>
			<input type="password" class="cpass" name="cpassword" placeholder="Password"/><br> <br> <br>


			<div style="color: red; font-weight: bold;"> 
				<?php 
					if(isset($_SESSION['error']))
					{
						echo $_SESSION['error'];
						unset($_SESSION['error']);
					}

				?>
			</div>

			
		    <input type="submit" class="sub" name="submit" value="Register" /> <br> 
			
			
			 <p align="center"> Have an account? <a href="Admin_login.php"> LogIn </a>

		</form>
	</div>
</body>
</html>