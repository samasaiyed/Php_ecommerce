<?php 

include_once 'connection.php';
$result = mysqli_query($conn,"SELECT * FROM product_rating");
?> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	
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
			font-size: 18px;
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
		.section3 .user
		{
			font-size: 21px;
			background-color: maroon; 
			color: white; 
			padding: 10px;
			margin-bottom: 20px;
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
	<?php include "index.php" ?>

	<section class="section3">
		<div class="user" align="center"> Ratings & Rivews </div>
		<div>
			<div class="card">
					<table border="" align="center" style="background-color: lavender;">
						<tr>
						<th> Rid </th>
						<th> Uid </th>
						<th> Email </th>
						<th> Pid </th>
						<th> Rating </th>
						<th> Review title </th>
						<th> Review Description </th>
						<th> Photo </th>
						<th> Status </th>
						<th> Date </th>
						<th colspan="2" align="center"> Action </th>
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
							<td><?php echo $row["photo"]; ?></td>
							<td><?php echo $row["status"]; ?></td>
							<td><?php echo $row["date"]; ?></td>
							
							<td>
								<button class="action">
									<a href="admin_delete.php?aid=<?php echo $row["rid"]; ?>"> Delete </a>
								</button>
							</td>
						</tr>
						<?php
						}
						?>
                    </table>
			</div>
	    </div>
	</section>
	
	</body>
</html>

