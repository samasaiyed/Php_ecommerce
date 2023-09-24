<?php include "header.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
*{
   box-sizing: border-box;
}
body{
	margin:0 ;

}
.about
{
	margin-top: 20px;
	background-color: lavenderblush;
	text-align: center;
	padding: 20px;
	margin-bottom: 20px;
}
.about h2{
	color: black;
	text-shadow: 2px 2px 2px red;
	font-weight: bold;
}
	.card {
  box-shadow: 4px 4px 10px darkred;
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  background-color: white;

}

.title {
  color: darkgray;
  font-size: 18px;
}


</style>
</head>
<body>
<div class="about">
	<img src="image/Free_Sample_By_Wix.jpeg">
	<h1> About Us </h1>
	<h2> THE SKY FASHION  </h2>
	<p> The sky fashion is an E-Commerce website for cosmatics. </p>
</div>

<div class="card">
  <img src="image/office-girl-icon.png"  style="width:100% ; margin-top: 10px;">
  <h2>Sama Saiyed</h2>
  <p class="title"> CS STUDENT </p>
  <p> Shree Ram Krishna Institute of Computer Science & Applied Science </p>
  <p>  </p>
  
</div>
<?php include"footer.php" ?>
</body>
</html>
