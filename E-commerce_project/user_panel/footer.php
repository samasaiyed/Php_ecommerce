<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

	body{
	/*	margin: 0;
		padding: 0;
	*/}
	.footer 
	{
		margin-top :  1vw;
	}
	.inner-footer
	{
		height: 12vw;
		margin: 0;
		padding: 0;
		background: black;
	}
	.social-links
	{
		display: flex;
	}
	.social-links ul{
		padding: 2vw;
		display: flex;
		height: 2vw;
		margin: auto;
	}
	.social-items
	{
		display: flex;

	}
	.social-items a
	{
		padding: 10px 20px;
		font-size: 2.5vw;
		color: aquamarine;
		text-decoration: none;
		transition: all .25s;
	}
	.social-items a:hover
	{
		color: plum;
	}
	.quick-links
	{
		display: flex;
		width: 100%;
		height: 5vw;
		text-align: center;
		padding: 4vw;
		justify-content: center;

	}
	.quick-links ul
	{
		display: flex;
	}
	.quick-items{
		list-style: none;
	}
	.quick-items a
	{
		text-decoration: none;
		padding: 0 1vw;
		font-size: 1vw;
		color: white;
	}
	.quick-items a:hover
	{
		color: plum;
	}
	.outer-footer
	{
		padding: 0.5vw;
		text-align: center;
		color: white;
		font-size: 1vw;
		background-color: darkgray;
	}
	
</style>
</head>
<body>
	

	<footer class="footer">
	<div class="inner-footer">
		<div class="social-links">
			<ul>
				<li class="social-items"><a href="#" class="fa fa-facebook"></a></li>
				<li class="social-items"><a href=" https://twitter.com/sama_saiyed?t=o38_FupirBor8muFNLI_KA&s=08" class="fa fa-twitter"></a></li>
				<li class="social-items"><a href="#" class="fa fa-youtube"></a></li>
				<li class="social-items"><a href="https://instagram.com/_sama_saiyed_?utm_medium=copy_link" class="fa fa-instagram"></a></li>
			</ul>
		</div>

		<div class="quick-links">
			<ul>
				<li class="quick-items"> <a href="about.php"> About Us </a> </li> &nbsp;&nbsp;&nbsp;&nbsp;
				<li class="quick-items"> <a href="#"> Terms & Conditions </a> </li>&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="quick-items"> <a href="#"> Services </a> </li>&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="quick-items"> <a href="#"> Privacy policy </a> </li>&nbsp;&nbsp;&nbsp;&nbsp;
				<li class="quick-items"> <a href="#"> Cancelation policy </a> </li>&nbsp;&nbsp;&nbsp;&nbsp;
			</ul>
		</div>
	</div>

	<div class="outer-footer">
		copyright &copy; <?php echo date("Y") ?>  All Rights Reserved
	</div>
	
</footer>

</body>
</html>