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
    height: 350px;
    padding: 30px 30px;
    box-sizing: border-box;
    border-radius: 25px;
    background-color: white;

   
}
h3{
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
	if(isset($_GET['uid']))
	{
		$uid = $_GET['uid'];
		$password = $_POST['password'];
		$cpassword = $_POST['cpassword'];


			if($password === $cpassword)
			{
				
					$update_que = "update users set password = '$password',cpassword='$cpassword' where uid = '$uid' " ;
					$iquery = mysqli_query($conn,$update_que);

					if($iquery)
					{
						$_SESSION['e'] = "Your Password has been updated";
						header("location:login.php");
					}
					else
					{
						$_SESSION['err'] = "Your Password has been updated";
						header("location:reset_password.php");
					}
			}
		
			else
			{
				$_SESSION['err'] = "password and confirm password are not matched.";
			}
	}

}
?>
	<div class="reg">
		<a href="homepage.php">
          		<span class="glyphicon glyphicon-remove"></span>
        	</a>
	<h3><b> Recover Password </b></h3>
		<form name="registration" action="" method="post">
			

			<b style="font-size: 22;"> New PassWord : </b> <br>
			<input type="password" class="pass" name="password" placeholder="Password"/><br> 
			
			<b style="font-size: 22;">Confirm PassWord : </b> <br>
			<input type="password" class="cpass" name="cpassword" placeholder="Password"/><br> <br> <br>


			<div style="color: red; font-weight: bold;"> 
				<?php 
					if(isset($_SESSION['err']))
					{
						echo $_SESSION['err'];
						unset($_SESSION['err']);
					}

				?>
			</div>

			
		    <input type="submit" class="sub" name="submit" value="Reset Password" /> <br> 
			
			
			 

		</form>
	</div>
</body>
</html>