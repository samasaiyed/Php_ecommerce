
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
		margin-left: 20px;
		margin-top: 100px;
		/*border: 1px solid black;*/
		width: 20%;
		height: auto;
		background-color: ghostwhite;
		padding: 10px;

		box-shadow: 2px 2px 4px red;
	}
	.list ul li
	{
		padding: 15px;
		border-bottom: 1px solid black;
		list-style: none;
	}
	.list ul li a
	{
		font-size: 16px;
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
		margin-left: 20px;
		margin-top: 100px;
		/*border: 1px solid black;*/
		width: 75%;
		height: auto;
		background-color: ghostwhite;
		padding: 50px;
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
		width: 100%;
		display: inline-block;
	}
	.ordered_product table tr td
	{
		padding: 10px;
	}
</style>
</head>
<?php include 'header.php';
include 'connection.php';

 $uid = $_SESSION['user_id'];
if(isset($uid))
{
	
	$sel_product = "SELECT distinct  product.pid,product.category,product.product_name,product.brand,product.mrp,product.selling_price,product.qty,product.images,product.title,product.description,product.ingredients,product.howto,order_master.order_id,order_master.qty,order_master.total_price,order_master.paid_amount,order_master.date from product  inner join order_master on product.pid = order_master.pid inner join user_order_detail on order_master.order_id = user_order_detail.oid where user_order_detail.uid = '".$uid."' and user_order_detail.oid='".$_GET['oid']."' ";
	$res1 = mysqli_query($conn,$sel_product) or die(mysqli_error($conn));
}
?>
<body>
<div class="container">
<div class="list"> 
<ul>
   	<li>
    <a href ="user_profile.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style='font-size:18px' class='far'>&#xf2c2;</i> My Profile </a>	</li>
    <li>
    <a href ="myorder.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style="font-size:18px" class="fa">&#xf290;</i> My Order </a>	</li>
    <li>
    <a href ="wishlist_products.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile"><i style='font-size:20px' class='far'>&#xf004;</i> WishList </a>	</li>
    <li>
    <a href ="logout.php"><i style='font-size:18px' class='fas'>&#xf011;</i> LogOut </a> 
    </li>
    </ul>
</div>
<div class="ordered_product"> 
	<div>
		<P> <h2> Order Detail </h2> </P><hr style="height:2px;background-color:black">
		<table border="1" width="100%">

			<?php while($row = mysqli_fetch_array($res1)) { ?>
			<tr style="width: 500px;">
			 <td> 
				<b>Order id : <?php echo $row['order_id']?></b>
			</td>
			<td>
				<p>order placed : <?php echo $row['date'];?> <br></p>
				<p>Total Price : <?php echo $row['total_price']; ?></p>
			</td>
			</tr>
			<tr>
			<td colspan="2">	
				<?php echo $row['title'];?><br>
				
				 <img src="<?php echo 'image/product/'.$row['images']; ?>" class="image" width="100" height="100"><br><br><br>
				 <p align="right"> <b> Qty :</b> <?php echo $row['qty'];?> &nbsp;&nbsp; </p>
			</td>
		
			</tr>
			<tr>	
			<td colspan="2">	
				<a href="add_rating.php?pid=<?php echo $row['pid']; ?>"> <button class="addreview" style="background-color: purple;width: 100%;color: white;padding: 8px;border-radius: 4px;margin-top: 10px;margin-bottom: 10px;"> Rate your Experience </button> </a> <br>
			</td>	

			<br>	
			</tr>

		<?php } ?>

		<?php $sel_pay = "select *from user_order_detail where oid = '".$_GET['oid']."' ";
			  $res2 = mysqli_query($conn,$sel_pay);
			  $row1 = mysqli_fetch_array($res2);
		?>

		 <table border="1" width="100%">
		 	<tr> 
		 		<td>
		 		  <p> <b> payment mode : </b> <?php echo $row1['payment_mode'];?> </p> <hr>
		 		  <p> <b> Total price : </b> <?php echo $row1['paid_amount'];?>  </p> 
		 		</td>
		 	</tr>
		 </table>

		</table>
	</div>
</div>
</div>
<?php include 'footer.php';?>
</body>
</html>