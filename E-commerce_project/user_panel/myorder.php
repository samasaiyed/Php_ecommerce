
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
.ordered_product
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
	.image
	{
		float: left;
		width: 100px;
		height: auto;
	}
	.addreview
	{
		width: 80%;
		display: inline-block;
		font-weight: bold;
		font-size: 1vw;
		background-color: crimson;
		color: white;
		padding: 1vw;
		border-radius: 4px;
		float: left;
		border: none;
		box-shadow: 2px 2px 4px purple;
	}
	.addreview:hover
	{
		opacity: 0.5;
	}
</style>
</head>
<?php include 'header.php';
include 'connection.php';

 $uid = $_SESSION['user_id'];
if(isset($uid))
{
	
	$sel_product = "SELECT product.pid,product.category,product.product_name,product.brand,product.mrp,product.selling_price,product.qty,product.images,product.title,product.description,product.ingredients,product.howto,order_master.order_id,order_master.qty,order_master.total_price,order_master.date from product  inner join order_master on product.pid = order_master.pid inner join user_order_detail on order_master.order_id = user_order_detail.oid where user_order_detail.uid = '".$uid."' and order_master.status = 'confirm' ";
	$res1 = mysqli_query($conn,$sel_product);
}
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
<div class="ordered_product"> 
	<div>
		<table width="100%">
			<P> <h2> <b> My Orders </b></h2> </P><hr style="height:2px;background-color:black">
			<?php while($row = mysqli_fetch_array($res1)) { ?>
			<tr style="width: 40vw;padding:1vw"> 
				<td> 
				<b>Order id : <?php echo $row['order_id']?></b><br>
				order place :
				<?php echo $row['date'];?> <br><br>
				</td>
				<td>
					<a href="view_my_order_detail.php?oid=<?php echo $row['order_id']; ?>"> <button class="addreview" style="background-color: white;width: 80%;color: purple;font-weight: bold;border-color: purple; padding: 1vw;border-radius: 4px;float: right;"> View Order Detail </button> </a> <br>
				</td>
			</tr>
			<tr>
				<td>
				<?php echo $row['title'];?><br>
				 <img src="<?php echo 'image/product/'.$row['images']; ?>" class="image" width="100" height="100"><br><br><br>
				 Paid Amount : <?php echo $row['total_price']; ?> <br><br>
				<a href="add_rating.php?pid=<?php echo $row['pid']; ?>"> <button class="addreview"> Rate your Experience </button> </a><br>
		<hr style="height:1px;background-color: black;margin-top: 3vw;margin-bottom: 3vw;width: 100%;
		">
					

			</td>
			</tr>
		<?php } ?>
		</table>
	</div>
</div>
</div>
<?php include 'footer.php';?>
</body>
</html>