
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title></title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
		$(document).ready(function(){
    	var maxLength = 50;
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
	#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 25px;
  border: none;
  outline: none;
  background-color: purple;
  color: black;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
  font-weight: bold;
}

#myBtn:hover {
  background-color: #555;
}
		.section3
		{
			margin-top: 20px;
			background-color: cyan;
			width: 80%;
			float: right;
			
			background-color: lavender;
		}
		.section3 .insert
		{
			margin-top: 15px ;
		}
		.section3 .insert a
		{
			text-decoration: none;
			color: black;
			font-size: 18px;
			background-color: red;
			color: white;
			padding: 15px;
		}
		.section3 .card table th
		{
			padding: 10px;
			background-color: gray;
			color: maroon;
			font-weight: bold;
			font-size: 20px;
		}
		.section3 .card table td
		{
			font-size: 16px;
		/*	text-align: center;*/
		}
		.action
		{
			background-color: purple;
			padding: 5px;
		}
		.action a{
			text-decoration: none;
			color: white;
			font-size: 20px;
		}
		.brand
		{
			float: left;

		}
		.product
		{
			float: right;
		}
		.addbrand ,.addproduct
		{
			background-color: maroon;
			padding: 10px;
		}
		.addbrand a,.addproduct a
		{
			text-decoration: none;
			color: white;
		}
		.detail
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
		}
		.edit
		{
			background-color: ;
		}
		.edit a
		{
			text-decoration: none;
			color: white;
			
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

	</style>
</head>
<body>
<?php 

include_once 'connection.php';
$result = mysqli_query($conn,"SELECT * FROM product_rating");

?> 
	<?php include "index.php" ?>
<button onclick="topFunction()" id="myBtn" title="Go to top"> &uarr; </button>
	<section class="section3">
		<div>

			<div class="detail" align="center"> PRODUCT RATING </div>
			<div class="card">
				<form method="post"  enctype="multipart/form-data">
					<table border="" align="center" style="background-color: lavender; width: 90%;">
						<tr>
						<th> Rid </th>
						<th> Uid </th>
						<th> User Email </th>
						<th> Pid </th>
						<th> Rating </th>
						<th> Review title </th>
						<th> Review Description </th>
						<th> Photo </th>
						<th> Status </th>
						<th> Date </th>
						<th align="center"> Action </th>
						</tr>
						<?php
						

						while($row = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $row["rid"]; ?></td>
							<td><?php echo $row["uid"]; ?></td>
							<td><?php echo $row["email"]; ?></td>
							<td><?php echo $row["pid"]; ?></td>
							<td><?php echo $row["rating"]; ?></td>
							<td><?php echo $row["review_title"]; ?></td>
							<td class="show-read-more"><?php echo $row["review_description"]; ?></td>
									<td>
										<?php if($row['photo'] == '') { 
												echo "No image ";
											 }else{
										?>
										<img src="<?php echo 'image/review_image/'.$row['photo']; ?>" width=50px height=50px/>
									<?php } ?>
									</td>
							
							<td align="center" >

								<?php if($row['status'] == 1) { 
									echo '<p> <a href="admin_rating_status.php?rid='.$row['rid'].'&status=0">' ?> <i title="Click to Deactive" style='font-size:24px;color: darkgreen;' class='fas'> &#xf35b; </i> <?php '</a> </p>';
								 	} 
									 else{ 
									echo  '<p> <a href="admin_rating_status.php?rid='.$row['rid'].'&status=1">' ?> <i title="Click to Active" style='font-size:24px;color: darkred;' class='fas'> &#xf358; </i> <?php '</a> </p>';	
									 } ?>	
							</td>
							<td><?php echo $row["date"]; ?></td>
							<td align="center">
								
									<a href="admin_rating_delete.php?rid=<?php echo $row["rid"]; ?>"> <i style='font-size:24px; color:red;'title="Click to Delete" class='far'>&#xf2ed;</i> </a>
								
							</td>
						</tr>
						<?php
						}
						?>
                    </table>
                   </form>
			</div>
	    </div>
	</section>


	<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>

	
	</body>
</html>




