<?php 
 include "header.php";
include "connection.php";

if(isset($_GET['pid']))
{
	
	$sql = "SELECT * FROM `product` WHERE pid = '".$_GET['pid']."'";	
	$res = mysqli_query($conn,$sql); 
	$row = mysqli_fetch_array($res);
	$pid = $row['pid'];

	//star rating
	$rev = "SELECT * FROM `product_rating` WHERE pid= '".$pid."'";
	$rev1 = mysqli_query($conn,$rev);
	$get_rating = mysqli_fetch_array($rev1);
	if(isset($get_rating))
	{
		$rating = $get_rating['rating'];
	}


	$rat = "SELECT AVG(rating) as avgrating FROM product_rating WHERE pid = '$pid' "; 
	$avgrat = mysqli_query($conn,$rat);
	$get_avgrat = mysqli_fetch_array($avgrat);
	if(isset($get_avgrat))
	{
		$avg_rating = $get_avgrat['avgrating'];
	

		if($avg_rating <= 0)
		{
			$avg_rating = "No Ratings given. ";		
		}
		else
		{
			$avg_rating = number_format($avg_rating, 1, '.', '')."/5";

		}
	}
	else
	{
		echo "Error: " .mysqli_error($conn);
	}


	$review = "SELECT count(review_description) as num_reviews FROM `product_rating` WHERE pid = '".$pid."' AND review_description != '' ";
	$set_review = mysqli_query($conn,$review);
	$num_re = mysqli_fetch_array($set_review);
	if(isset($num_re))
	{
		$num_reviews = $num_re['num_reviews'];
	}
	else
	{
		echo "Error : " .mysqli_error($conn);
	}
	/*$num_reviews = mysqli_num_rows($set_review);
	if($num_reviews > 0)
	{
		$num_reviews = $num_reviews;
	} 
	else
	{
		$num_reviews = "";
	}*/

	$rating_ = "SELECT count(rating)  as num_rat FROM `product_rating` WHERE  pid = '".$pid."'";
	$set_rat = mysqli_query($conn,$rating_);
	$num_ra = mysqli_fetch_array($set_rat);
	if(isset($num_ra))
	{
		$num_ratings = $num_ra['num_rat'];
	}
	else
	{
		echo "Error : " .mysqli_error($conn);
	}
	
}

$img = "SELECT * FROM `product_rating` WHERE pid = '".$_GET['pid']."' and photo != '' ";
$set_img = mysqli_query($conn,$img);



?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> <?php echo $row['title'];?> </title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
		$(document).ready(function(){
    	var maxLength = 200;
    	$(".show-read-more").each(function(){
        	var myStr = $(this).text();
        	if($.trim(myStr).length > maxLength){
            	var newStr = myStr.substring(0, maxLength);
            	var removedStr = myStr.substring(maxLength, $.trim(myStr).length);
            	$(this).empty().html(newStr);
            	$(this).append(' <a href="javascript:void(0);" class="read-more"> ...Read more</a>');
            	$(this).append('<span class="more-text">' + removedStr + '</span>');
        	}
    	});
    	$(".read-more").click(function(){
        	$(this).siblings(".more-text").contents().unwrap();
        	$(this).remove();
    	});
	});
</script>
	<style type="text/css">
		.container
		{
			margin-top: 60px;
			padding-top: 30px;
			background-color: white;
			width: 80%;
			height: auto;
			box-shadow: 2px 2px 4px dimgray;
		}
		.container .left
		{
			float: left;
			padding: 10px;
			width: 30%;
		}
		.container .right
		{
			float: right;
			padding-left: 0px;
			width: 60%;

		}
		.image
		{
			width: 100%;
			height: auto;
			transition: 0.5s all ease-in-out;
		}
		.image:hover
		{
			/*-ms-transform: scale(1.5);
			-webkit-transform: scale(1.5);
			*/transform: scale(1.5);
		}
		.price s{
        	color: gray;
        	font-size: 15px;
    	}
   	    .price
		{
			font-size: 18px;
		}
		.buynow
		{
			background-color: purple;
			padding: 10px;
			font-size: 18px;
			width: 80%;
			color: white;
			font-weight: bold;
			border: none;
			margin-top: 50px;
		}
		.buynow:hover
		{
			background-color: rosybrown;
			padding: 10px;
			font-size: 18px;
			width: 80%;
			color: black;
			font-weight:bold ;
			border: none;
		}
		.addreview
		{
			background-color: white;
			border: solid purple;
			border-radius: 4px;
			font-size: 16px;
			margin-bottom: 20px;
			padding: 15px;
		}
		.checked {
  			color: #5b0069;
		}
		.num_rating_container
        {
        	float: left;
        	padding: 0px;
        	height: auto;
        	width: 100%;
        	margin-bottom: 10px;
        }
        table
        {
        	width: 100%;
        	height: auto;
        }
        td
        {
        	padding: 20px;
        	height: auto;
        }
        .show-read-more .more-text{
        	display: none;
    	}
    	.read-more
    	{
        	text-decoration: none;
        	color: black;
        	font-weight: bold;
        	font-size: 16px;
    	}
    	.read-more:hover
    	{
    		color: red;
    		text-decoration: none;
    	}
    	.user_name
    	{
    		text-align: left;
    		padding: 20px;
    		float: top;
    		vertical-align: text-top;
    	}
    	.rating_review
    	{
    		padding: 20px;
    	}
    	.date
    	{
    		text-align: center;
    		font-size: 14px;
    		padding: 20px;
    	}
    	.star
    	{
    		margin-bottom: 10px;
    		color: white;
    		border-radius: 4px;
    		font-size: 13px;
    	}
    	.wishlist
    	{
    		background-color: purple;
			padding: 11.5px;
			font-size: 16px;
			width: 30%;
			color: white;
			font-weight: bold;
			border: none;
			margin-top: 50px;
    	}
    	.wishlist:hover
    	{
    		background-color: pink;
    		color: black;
    		font-weight: bold;
    		box-shadow: 2px 2px 4px purple;
    	}
	</style>
	
</head>
<body>


<div class="container">
	<div>
		<a href="wishlist.php?pid=<?php echo $pid;?>">
       				 <i style='font-size:25px;margin-top: 0px;margin-left: 0px;color: purple;' class='far' title="Add To Wishlist">&#xf004;</i> 
       	</a>
		<div class="left"> <img src="image\product\<?php echo $row['images'];?>" class="image" width="400" height="400"> </div>

			<div class="right"> <h3> <b> <?php echo $row['title'];?></b> </h3> 
				<hr>

			<?php if($avg_rating > 4  && $avg_rating <=5) { ?>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
			<?php }  ?>

			<?php if($avg_rating > 3 && $avg_rating <=4) { ?>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
			<?php } ?>

			<?php if($avg_rating > 2 && $avg_rating <=3) { ?>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
			<?php } ?>
			
			<?php if($avg_rating > 1  && $avg_rating <=2) { ?>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
			<?php } ?>
			
			<?php if($avg_rating > 0 && $avg_rating <= 1 ) { ?>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
				<span class="fa fa-star" style="color: antiquewhite;"></span>
			<?php } ?>

			
			&nbsp;  <span id='numeric_rating_<?php echo $pid; ?>'><?php echo $avg_rating; ?></span> 

			  <p class="rating"> <h6><b> Raitng : <?php echo $num_ratings;?>  & Reviews : <?php echo $num_reviews;?>  </b></h6></p>
			  <br>
			<?php if($row['mrp'] != $row['selling_price']) { ?>
                        <p class="sprice" name="sprice">  MRP :  <s> <?php echo $row['mrp']; ?> </s> <b> <?php echo $row['selling_price']; ?> </b> </p>
                    <?php } 
                    else 
                    { ?>
                        <p class="sprice" name="sprice">  MRP : <b> <?php echo $row['selling_price']; ?> </b> </p>
        	<?php  }  ?>

        	<p><h6> Inclusive of all taxes </h6></p>


        	
       			<?php if($row['qty'] > 1) { ?>

       			<form action="manage_cart.php"  method="POST">
        		<button type="submit" class="buynow" name="buynow" >Buy Now</button>  

        		<input type="hidden" name="image" value="<img src='image\product\<?php echo $row['images'];?>'">
        		<input type="hidden" name="pid" value="<?php echo $row['pid'];?>">
        		<input type="hidden" name="pname" value="<?php echo $row['product_name'];?>">
        		<input type="hidden" name="price" value="<?php echo $row['selling_price'];?>">
        		<input type="hidden" name="brand" value="<?php echo $row['brand'];?>">
   				</form>	
       		             			
   				<?php } 
   				else { ?>
   					<a href="wishlist.php?pid=<?php echo $pid;?>">
       				<button type="submit" class="wishlist" name="wishlist" title="Add To Wishlist"> <i style='font-size:20px' class='far'>&#xf004;</i> Add To Wishlist
       				</button> 
       			</a>
       			<label class="out_of_stock" name = "outofstock" style="padding: 12px;"> Out Of Stock </label>
       		<?php } ?>
				<div class="ship" style="background-color: rosybrown; padding: 10px; margin-top: 20px; margin-bottom: 20px;">
        <div class="" style="font-weight: bold;"><i style='font-size:20px' class='fas'>&#xf0d0;</i>  &nbsp; &nbsp; 100% Authentic Product Sourced Directly  </div> </div>
 
	    </div>

	</div>
	

</div>

	
<div class="container">
	<h3> Product Description </h3>
	<?php include 'product_description.php';?>
</div> 


<div class="container" style="padding-bottom: 70px;">
	<h3 style="margin-bottom: 30px;"> Ratings & Reviews <hr> </h3>

	<div class="num_rating_container" >
		<div class="w3-third w3-container">  <h1><b><?php echo $avg_rating;?></b></h1> </div>
		<div class="w3-third w3-container"> <h6> OverAll Rating <br>  <?php echo $num_ratings;?> Ratings </h6> </div>
		<div class="w3-third w3-container">
		 <a href="add_rating.php?pid=<?php echo $pid; ?>"> <button class="addreview"> Write Review </button> </a> </div> 
		
	</div>

	<br><br>
<hr style="margin-top:50px;">
	<div class="c_img"><b>Photos from customer</b></div>
	<div class="customer_image">

		<?php while($get_img = mysqli_fetch_array($set_img)) { ?>
		 <img src="image\review_image\<?php echo $get_img['photo'] ;?>" class="c_image" width="100" height="100">
		<?php } ?>
	</div>
	<hr>
	<div class="review" style="padding: 20px;">
		 <h4> <b> Reviews </b> </h4> <br> <br> 

		<table cellpadding="20px" align="center">
		<?php 
            include 'connection.php';

            $sql = "SELECT DISTINCT users.uid,users.email,users.username,product_rating.uid,product_rating.pid,product_rating.review_title,product_rating.rating,product_rating.review_description,product_rating.photo,product_rating.date FROM users INNER JOIN product_rating ON users.uid = product_rating.uid where product_rating.pid = '".$pid."' AND status = 1 AND review_description != '' ORDER BY users.uid" ;
                $set = mysqli_query($conn,$sql);

                while($row = mysqli_fetch_array($set)) {
            ?>
            <tr style="border-bottom: 1px solid lightgray;">
            	 <td width="20%" class="user_name">	 <i class='fas fa-user-circle' style='font-size:48px;color:gray;'> </i> <?php echo $row['username']; ?> </td> 

                 <td width="60%" class="rating_review">
                 	
                 	<?php if($row['rating'] == 5) { ?>
                 			<button class="star" style="background-color: purple;"><?php echo $row['rating']?> <span class="fa fa-star"></span></button> <br>
                 	<?php } ?>
                 	<?php if($row['rating'] == 4) { ?>
                 			<button class="star" style="background-color: purple;"><?php echo $row['rating']?> <span class="fa fa-star"></span></button> <br>
                 	<?php } ?>
                 	<?php if($row['rating'] == 3) { ?>
                 			<button class="star" style="background-color: blueviolet;"><?php echo $row['rating']?> <span class="fa fa-star"></span></button> <br>
                 	<?php } ?>
                 	<?php if($row['rating'] == 2) { ?>
                 			<button class="star" style="background-color: yellow;"><?php echo $row['rating']?> <span class="fa fa-star"></span></button> <br>
                 	<?php } ?>
                 	<?php if($row['rating'] == 1) { ?>
                 			<button class="star" style="background-color: red;"><?php echo $row['rating']?> <span class="fa fa-star"></span></button> <br>
                 	<?php } ?>

                 	<b>  "<?php echo $row['review_title'];?>" </b> <br> <br>
                 	 <p class="show-read-more"> <?php echo $row['review_description'];?> </p> 

                 	 <?php if($row['photo'] != null ){?>
                 	 <a href="#"><img src="image\review_image\<?php echo $row['photo'] ;?>" width="100px" height="100px"></a>
                 	<?php } ?>
                 </td>
                 
                 <td width="20%" class="date">  <sup> <?php  echo $row['date']; ?> </sup> </td>
            </tr>


            <?php } ?>
        </table>
	</div>
</div>

<?php include 'footer.php';?>
</body>
</html>

