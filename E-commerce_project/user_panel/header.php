<?php 
session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
	<title>
		SKY Fashion 
	</title>
 <?php //	<link rel="stylesheet" href="header.css"> ?>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script type="text/javascript">
	// for search product//
	function active() {
		var sb = document.getElementById('searchbox');
		if(sb.value == 'Search...')
		{
			sb.value = ''
			sb.placeholder = 'Search...'
		}
	}
	function inactive() {
		var sb = document.getElementById('searchbox');
		if(sb.value == 'Search...')
		{
			sb.value = ''
			sb.placeholder = 'Search...'
		}
	}

</script>
<style type="text/css">
	*{
	box-sizing: border-box;
}
	body
	{
		font-family: sans-serif;
		background-image: url(image/cool-background.png);
		background-size: cover;
		padding-top: 1vw;
		
	}
	.header .sky
	{
		float: left;
		margin-left: 3vw;
		margin-right: 6vw;
		color: black;
		text-shadow: 4px 2px 5px red;
		font-size: 2vw;
		font-family: cursive;
		margin-top: 1vw;
		font-weight: bold;

		animation-name: sky;
		animation-duration: 5s;
		animation-iteration-count: infinite;
		animation-direction: alternate;
	}
	@keyframes sky
	{
		from{color: black;}
		to{color: white;}
	}
	.header
	{
			position: fixed;
			width : 100%;
			height: auto;
			background: purple;
			text-align: center;
			top: 0;
			border-bottom: 1px dotted lavenderblush; 
		/*	overflow:hidden;
			z-index: 10;*/
	}
	@media screen and (max-width: 500px){
		.header  ul{
			float: none;
			display: block;
			text-align: left;
		}
	}
	.header ul
	{
		display: inline-flex;
		float: right;
		list-style: none;
	}
	.header ul li
	{
		margin-top: 1.5vw;
		margin-bottom: 0.8vw ;
		margin-left: 1vw;
		margin-right: 1vw;
	}
	.header ul li a
	{
		text-decoration: none;
		color: lavenderblush;
		font-size: 1.2vw;
		font-weight: bold;
	}
	.header ul li a:hover
	{
		color: lightcyan;	
	}
 .menu
 	{
 	 display: none;
 	}
.header ul li:hover .menu 
 {
 	display:block;
 	background-color: lavenderblus;
 	margin-top: 0.5vw;
 	margin-left: -5vw;
 	position: fixed;
 }
 .header ul li:hover .menu ul
 {
 	display: block;
 	margin: 0.5vw;
 }
 .header ul li .menu ul li a
 {
 	color: black;
 	font-size: 1vw;
	font-weight: bold;
 }
 .header ul li .menu ul li a:hover{
 	color: darkmagenta;
 }
 .header ul li:hover .menu ul li 
 {
 	width: 15vw;
 	padding: 0.5vw;
 	margin: 0px;
 	/*border-top: 1px dotted darkred;*/
 	border-bottom: 1px dotted darkred;
 	color: darkmagenta;
 	background: lavender;
 	text-align: center;
 	box-shadow: 4px 4px 10px purple;

 }
 .header ul li:hover .menu ul li:last-child
 {
 	border-bottom: none;
 }
 .header .search
 {
 	float: right;
 	font-size: 1vw;
 	margin-top: 1.5vw;
 	margin-left: 1vw;
 	margin-right: 1vw;
 }
 .search button
{
	background-color: pink;
	color: black;
}

.header ul li .badge{
  position: absolute;
/*top: 5px;*/
  right: 0.4vw;
 /* padding: 5px 10px; */
  border-radius: 50%;
  background-color: darkred;
  color: white;
  font-size: 1vw;

}

 .user_profile
 	{
 	 display: none;
 	}
.header .name:hover .user_profile 
{
	display:block;
 	background-color: lavenderblus;
 	margin-top: 0.2vw;
 	margin-left: -5vw;
 	position: fixed;
}
.header .name:hover .user_profile ul 
{
	display: block;
 	margin: 1vw
}
.header .name .user_profile ul li a
{
	color: black;
	font-size: 1vw;
	font-weight: bold;

}
.header .name .user_profile ul li a:hover
{
		color: darkmagenta;
}
.header .name .user_profile ul li
{
	width: 15vw;
 	padding : 0.5vw;
 	margin: 0px;
/* 	border-top: 1px dotted darkred;*/
 	border-bottom: 1px dotted darkred;
 	color: darkmagenta;
 	background: lavender;
 	text-align: center;
 	box-shadow: 4px 4px 10px purple;
}


</style>
</head>
<body>

				<div class="header">
						<div class="sky">  SKY Fashion </div> <!-- Name of the website -->
						<ul>
<!-- navigation bar -->
							<li> <a href="homepage.php"> Home </a> </li>
							<li> <a href="#"> Categories </a>
<!-- listview for categories -->
									<div class="menu">
										<ul>
									    	<li> <a href="makeup.php">
									    				<button style="width:100%; height: 100%;background-color: transparent;border: none;"> Makeup </button>
									    			</a> 
									    	</li> 
 							        	<li> 
 							        			<a href="skin.php"> 
 							        				<button style="width:100%; height: 100%;background-color: transparent;border: none;"> Skin </button> 
 							        			</a> 
 							        	</li> 
							       		<li> 
							       				<a href=""> 
							       					<button style="width:100%; height: 100%;background-color: transparent;border: none;"> Hair </button>  
							       				</a> 
							       		</li>
							        	<li> 
							        			<a href="parfume.php"> 
							        				<button style="width:100%; height: 100%;background-color: transparent;border: none;"> Fragrance</button> 
							        			</a> 
							        	</li>
							        	<li> <a href=""> 
							        			<button style="width:100%; height: 100%;background-color: transparent;border: none;"> Tools & Appliences</button> 
							        			</a> 
							        	</li>
							      </ul>									
									</div> 
<!-- listview for categories over -->
							</li>
							<li> <a href="brand.php"> Brands </a>	</li>

							<li> <a href="about.php"> About Us </a> </li>
							

					  	<div class="search"> 
					  		<form action=search.php method="GET" id="searchform"> 
					  		<!-- Search bar -->
                				<input type="search" placeholder="" name="search" id="searchbox" value="Search..." autocomplete="off" onmousedown="active();" onmouseup="inactive();"> 
                <!-- Search bar over -->
                <!-- Search Button-->
                   			<button type="submit" name="Search" value="Search..." onmousedown="active();" onmouseup="inactive();"> 
                   					<i class="fa fa-search"></i> 
                	 			</button> 
                <!-- Search button over -->
                </form>
      				</div> 

      						

<!-- if user is logged in user detail will display i.e. profile,wishlist,order and logout btn else Account(Text) will display which redirect  to a login page -->
      						<li>  
      						<?php 
      							if(isset($_SESSION['user_email']))
      							{ 
      					  			if(isset($_SESSION['user_name']) && isset($_SESSION['user_id']))
      					  			{ 
      							?>
      								<div class="name"> <a href=""><span class="glyphicon glyphicon-user"> </span> <?php echo $_SESSION['user_name'];?> </a> 
      					  			<div class="user_profile">
      					  			<ul>
      					  				<li>
      	<!-- Button for my profile -->
      					  					<a href ="user_profile.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile">
      					  						<button style="width:100%; height: 100%;background-color: transparent;border: none;">
      					  							<i style='font-size:1vw' class='far'>&#xf2c2;</i> My Profile </button> 
      					  					</a>	
      	<!-- Button for my profile over -->
      					  				</li>
      					  				<li>
      	<!-- Button for my order -->
      					  					<a href ="myorder.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile">
      					  						<button style="width:100%; height: 100%;background-color: transparent;border: none;"><i style="font-size:1vw" class="fa">&#xf290;</i> My Order </button> 
      					  					</a>
      	<!-- Button for my order over -->	
      					  				</li>
      					  				<li>
      	<!-- Button for wishlist -->
      					  					<a href ="wishlist_products.php?uid=<?php echo $_SESSION['user_id'];?>" name="profile">
      					  						<button style="width:100%; height: 100%;background-color: transparent;border: none;"><i style='font-size:1vw' class='far'>&#xf004;</i> WishList </button> 
      					  					</a>
      	<!-- Button for wishlist over -->	
      					  				</li>
      					  				<li>
      	<!-- Button for logout -->
      					  			 		<a href ="logout.php">
      					  			 			<button style="width:100%; height: 100%;background-color: transparent;border: none;"><i style='font-size:1vw' class='fas'>&#xf011;</i> LogOut </button>
      					  			 		</a> 
      	<!-- Button for logout over -->
      					  				</li>
      					  			</ul>
      					  			</div> 
      					  		</div>
      					  <?php	
      									}
      							} 
      					  else
      					  { 
      					  	?>
      					  	<a href="login.php"> <span class="glyphicon glyphicon-user"> </span> Account </a>
      					  <?php		
      					  	
      					  }	
      					  ?>    		
													    									
     							</li>	
<!-- user detail over -->


<!-- Cart icon which display how many products are in cart if user is logged in -->
    							<?php 
    							if(isset($_SESSION['cart']) && isset($_SESSION['user_id']))
    							{
    								 $count = count($_SESSION['cart']);
    							?>
    								<li>  
    									<a href="cart.php">
    										<span class="glyphicon glyphicon-shopping-cart" style="font-size: 2vw; margin-right: 15px; margin-left: 25px;">
    										</span> 
    										<sup> <span class="badge"> <?php /*if(isset($count)) {echo mysqli_num_rows($count);}else{*/ echo $count; ?> </span>
    										</sup> 
    									</a>

    						<?php } 
    						else { ?>
    						  	<li>  
    						  		<a href="cart.php">
    						  			<span class="glyphicon glyphicon-shopping-cart" style="font-size: 2vw; margin-right: 15px; margin-left: 25px;">
    										</span>
    						  			<sup> <span class="badge"> <?php echo '0'; ?> </span>
    										</sup> 
    									</a>
    					<?php } ?>
    								</li>
<!-- cart over -->	 
    				</ul>
<!-- Navigation bar over-->
    			</div>
	

</body>
</html>