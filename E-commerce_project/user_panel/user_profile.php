
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> Product card </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
<style type="text/css">

.table .name
{
	width: 50%;
	padding: 2vw;
	background: lavenderblush;
	margin-top: 3vw;
	box-shadow: 4px 4px 8px red;
	text-align: left;
}
.table .address
{
	width: 50%;
	padding: 2vw;
	background: lavenderblush;
	margin-top: 3vw;
	box-shadow: 4px 4px 8px red;
	text-align: left;
}
.list
{
	float: left;
	margin-left: 2vw;
	margin-top: 7vw;
	/*border: 1px solid black;*/
	width: 20%;
	height: auto;
	background-color: ghostwhite;
	padding: 1vw;
	box-shadow: 2px 2px 4px red;
}
.list ul li
{
	padding: 1vw;
	border-bottom: 1px solid black;
	list-style: none;
}
.list ul li a
{
	font-size: 1.1vw;
	text-decoration: none;
	color: black;
	font-weight: bold;
}
.list  ul li:last-child
{
	border-bottom: none;
}
.list ul li a:hover
{
	color: purple;
}
.profile
{
	float: left;
	margin-left: 1vw;
	margin-top: 7vw;
	/*border: 1px solid black;*/
	width: 75%;
	height: auto;
	background-color: ghostwhite;
	padding: 3vw;
	box-shadow: 2px 2px 4px red;
}

</style>
</head>
<?php include 'header.php';
include 'connection.php';

 $uid = $_SESSION['user_id'];
$query = "SELECT *FROM users  where uid = '".$uid."' ";
	$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
?>
<body>
<div class="container">
<div class="list"> 
<ul>
   	<li>
    <a href ="user_profile.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style='font-size:1vw' class='far'>&#xf2c2;</i> My Profile </a>	</li>
    <li>
    <a href ="myorder.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style="font-size:1vw" class="fa">&#xf290;</i> My Order </a>	</li>
    <li>
    <a href ="wishlist_products.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style='font-size:1vw' class='far'>&#xf004;</i> WishList </a>	</li>
    <li>
    <a href ="logout.php"><i style='font-size:1vw' class='fas'>&#xf011;</i> LogOut </a> 
    </li>
    </ul>
</div>
<div class="profile"> 
		<P> <h2> <b>  My Profile </b></h2> </P><hr style="height:2px;background-color:black">

	<div align="center" class="table">
	<div>
	
		<?php
		while($row= mysqli_fetch_array($result))
		{
		?>
		<div class="name">
			<p style="font-size: 1vw; font-weight: bold; text-align: center;">
				<?php echo $row["username"]; ?><a href="user_profile_update.php?uid=<?php echo $row['uid'];?>"> <i style='font-size:1vw;color: black; float: right; margin-right: 0.5vw' title="Click to Update" class='far'>&#xf044;</i> </a> </p> <hr style="height: 1px;background-color:darkgray;">
			
				<p> <b> Email : </b> <?php echo $row["email"]; ?></p>
				<p> <b> mobile number : </b> <?php echo $row["mobile_number"]; ?></p>
		</div>	
		
		
		<div class="address">

			<div style="font-size: 1vw; font-weight: bold; text-align: center;">
				Address <a href="user_profile_update.php?uid=<?php echo $row['uid']; ?>"> <i style='font-size:1vw;color: black; float: right; margin-right: 0.5vw' title="Click to Change Address" class='far'>&#xf044;</i> </a> </div>
			<div> <b> Street : </b> <?php echo $row["address"]; ?></div>
		    <div> <b> City : </b> <?php echo $row["city"]; ?></div>
			<div> <b> State : </b><?php echo $row["state"]; ?></div>
			<div> <b> Pincode : </b><?php echo $row["pincode"]; ?></div>
		</div>
		<?php
		}
		?>
	</div>
</div>
</div>
</div>
<?php include 'footer.php';?>
</body>
</html>