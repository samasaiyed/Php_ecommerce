<?php 

session_start();
include 'connection.php';

if(isset($_SESSION['user_email']) && isset($_SESSION['user_id']))
{
	$sql = "SELECT * FROM `product` WHERE pid = '".$_GET['pid']."'";
	$res = mysqli_query($conn,$sql); 
	$row = mysqli_fetch_array($res);

	if(isset($_POST['submit']))
	{
		$rtitle = mysqli_real_escape_string($conn,$_POST['rtitle']);
		$review = mysqli_real_escape_string($conn,$_POST['rdesc']);
		$rating = @$_POST['rating'];
		$uid = $_SESSION['user_id'];
		$email = $_SESSION['user_email'];
		$status = 1;
		$pid = $_GET['pid'];
		
		$filename = $_FILES['image']['name'];
		$tempname = $_FILES['image']['tmp_name'];
		$folder = "image/review_image/".$filename;

		
		if(empty($rtitle) && empty($review) && empty($rating))
		{
			$_SESSION['msg'] = "please write a review and give rating!";
		}
		else
		{
			$insert = "INSERT INTO product_rating(uid,email,pid,rating,review_title,review_description,photo,status) VALUES ('".$uid."','".$email."','".$pid."','".$rating."','".$rtitle."','".$review."','".$filename."','".$status."')";
						if(mysqli_query($conn,$insert))
						{
							if(move_uploaded_file($tempname,$folder))
							{
								$_SESSION['msg'] = "Thanks For Your Feedback!";
							}
							else
							{
								$_SESSION['msg'] = "Erorr : uploading image".mysqli_error($conn);
							}
						}
						else
						{
							$_SESSION['msg'] = mysqli_error($conn);
						}
				
		}
	}

}
else
{
	header('location:login.php');
}

?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title> Ratings </title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="js/index.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
	<link rel='stylesheet' href='https://raw.githubusercontent.com/kartik-v/bootstrap-star-rating/master/css/star-rating.min.css'>
	<style type="text/css">

		.main
		{
			margin-top: 60px;
			background-color: lightgray;
			width: 450px;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
			padding: 20px 30px;
			box-shadow: 2px 2px 4px gray;
		}	
		.image
		{
			float: left;
		}
		.right_title
		{
			float: right;
        	width: 70%;
		}
		.arrow
		{
			font-size: 18px;
			color: black;
			text-decoration: none;
			float: left;
		}
		.rtitle ,.rdesc
		{
			border: none;
			padding: 8px;
			width: 90%;
		}
		
		
		.submit
		{
			width: 100%;
			background-color: purple;
			color: white;
			font-size: 19px;
			font-weight: bold;
			padding: 10px;
		}
		.submit:hover
		{
			background-color: white;
			color: purple;
			box-shadow: 2px 2px 4px purple;
			cursor: pointer;
		}
		.star-rating 
		{
    		direction: rtl;
    		/*display: inline-block;*/
    		padding: 10px;
    		text-align: center;
		}

		.star-rating input[type=radio] 
		{
    		display: none;
		}

		.star-rating label 
		{
    		color: white;
    		font-size: 35px;
    		padding: 0;
    		cursor: pointer;
    		-webkit-transition: all .3s ease-in-out;
    		transition: all .3s ease-in-out;
		}

		.star-rating label:hover,
		.star-rating label:hover ~ label,
		.star-rating input[type=radio]:checked ~ label 
		{
    		color: #5b0069;
		}
		.img
		{
			cursor: pointer;
		}
	</style>
</head>
<body>
<form id="ratingForm" method="post" action="" enctype="multipart/form-data">
	
<div class="main">
	<div style="color: red;">
		<?php 
			if(isset($_SESSION['msg']))
				{
					echo $_SESSION['msg'];
					unset($_SESSION['msg']);
				}

		  ?>
	</div> 
	<div class="review">
		<a href="product_detail.php?pid=<?php echo $row['pid'];?>" class="arrow" > &#10094; </a>
		<p style="text-align: center; font-size: 20px; font-weight: bold;">  Review Product </p>
	</div>
	<hr>
	<div class="product_detail" style="height: 120px;">  
	     <img src="<?php echo 'image/product/'.$row['images']; ?>" class="image" width="100" height="100">
	     <p class="right_title"> <?php echo $row['title'];?>  </p> 
	</div>
	<hr>

	<div class="form-group required">
  		<div class="col-sm-12">
        <label class="control-label"></label>
        &nbsp;&nbsp;&nbsp; &nbsp;
        <div class="star-rating">
            <input id="star-5" type="radio" name="rating" value="5" />
            <label for="star-5" title="5 stars">★</label>
            &nbsp;
            <input id="star-4" type="radio" name="rating" value="4" />
            <label for="star-4" title="4 stars">★</label>
            &nbsp;
            <input id="star-3" type="radio" name="rating" value="3" />
            <label for="star-3" title="3 stars">★</label>
            &nbsp;
            <input id="star-2" type="radio" name="rating" value="2" />
            <label for="star-2" title="2 stars">★</label>
            &nbsp;
            <input id="star-1" type="radio" name="rating" value="1" />
            <label for="star-1" title="1 star">★</label>
        </div>
        &nbsp;
    </div>
</div>  
	<hr>

	<div class="rating_review">
		<p><b> Write a Review </b> </p> <hr>
		<input type="text" name="rtitle" class="rtitle" placeholder="Review Title"> <br> <br>
		<textarea rows="4" cols="50" name="rdesc" placeholder="Review Description"></textarea>
	</div>

	<div class="upload_image">
		<p> <b>Show off your look! </b> </p> <hr>
		<p> Apply the product and take a selfie or already have a dashing photo with this product? Upload now and get a chance to be featured in the review section </p>
		<input type="file" name="image" class="img" multiple>
	
	</div>
		<br>
		<hr>

	<div class="btn">
		<button type="submit" class="submit" name="submit"> Submit </button>
	</div>

	
</div>
</form>
</body>
</html>

