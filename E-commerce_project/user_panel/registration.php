<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title> Create An Account </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body{
  font-family: cursive;
  background-image: url(image/cool-background.png);
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
    height: 600px;
    padding: 30px 30px;
    box-sizing: border-box;
    border-radius: 25px;
    background-color: white;

   
}
h1{
	text-align: center;
	text-shadow: 2px 2px 5px red;
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
	$name = $_POST['username'];
	$email = $_POST['email'];
	$mno = $_POST['mobile_number'];
	$password = $_POST['password'];
	$cpassword = $_POST['cpassword'];


	$email_sel = "select *from users where email = '$email' " ; 
	$query = mysqli_query($conn,$email_sel);


	$emailcount = mysqli_num_rows($query);

	if($emailcount > 0)
	{
		$_SESSION['error'] = "email alredy exists";
	}
	else
	{
		if($password === $cpassword)
		{
			if(!empty($name) && !empty($email) && !empty($mno) && !empty($password) && !empty($cpassword))
			{
				$insert_que = "insert into users(username,email,mobile_number,password,cpassword) values ('$name','$email','$mno','$password ','$cpassword');" ;
				$iquery = mysqli_query($conn,$insert_que);

				if($iquery)
				{
					$_SESSION['user_name'] = $_POST['username'];
					$_SESSION['user_email'] = $_POST['email'];
					$_SESSION['user_id'] = $row['uid'];
					header("location:login.php");
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
		<a href="homepage.php">
          		<span class="glyphicon glyphicon-remove"></span>
        	</a>
	<h1><b> Create New Account </b></h1>
		<form name="registration" action="" method="post">
			
			<b style="font-size: 22;"> Name : </b> <br>
			<input type="text" class="uname" name="username" placeholder="Enter Your Name" /> <br>
			
			<b style="font-size: 22;">E-mail : </b> <br>
	    	<input type="text" class="email" name="email" placeholder="Enter Your Email Address" /><br>

			<b style="font-size: 22;"> Mobile Number : </b> <br>
			<input type="text" class="mnumber" name="mobile_number" placeholder="Enter Your Mobile Number"/><br>

			<b style="font-size: 22;">PassWord : </b> <br>
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
			
			
			 

		</form>
	</div>
</body>
</html>