<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title> SKY Fashion </title>
<style type="text/css">
  *{
    box-sizing: border-box;
  }
  body{
    background-image: url(image/cool-background.png);
    background-size: cover;
  }
  .section
  {
    padding-top: 3vw;
  }

</style>

</head>
<body align="center">
<!-- Header -->
  <div>
  <header>
    <?php include "header.php" ?>
  </header>
  </div>
<!-- Header over -->

<!-- Homepage content -->
<div class="section"> 
   
<!-- 1st image -->      
      <a href="festive_finds.php"><img class="img" src="image/festive.gif" style="margin-top: 30px; width: 100%; height: auto;"></a>
<!-- Div for in the spotlight text -->      
      <div style="margin-top : 0.5vw; background-color: lavenderblush; padding: 1vw; font-size: 1.3vw; font-weight: bold;"> IN THE SPOTLIGHT </div>
<!-- over -->
<!-- image for mac proguct -->
        <a href="mac_product.php"><img class="img" src="image/mac/mac_slide.jpg" style="margin-top:0.5vw;width: 80%;height:auto ;"></a>
<!-- over--> 
<!-- image for key beauty product -->
        <a href="key_product.php"><img class="img" src="image/kay/key_slide.jpg" style="margin-top:0.5vw;width: 80%;height:auto ;"></a>
<!-- over -->
   

<!-- div for 2 images (festive finds) -->
    <div>
      <a href="inter1.php"> <img src="image/inter.gif" style="margin-top: 0.5vw; width: 40%; height:auto;"></a>
      <a href="inter1.php"> <img src="image/inter1.gif" style="margin-top: 0.5vw;; width: 40%; height:auto;"></a>
    </div>
<!-- over -->

<!-- div for 2 images (maybelline & lakme)-->
    <div style="margin-top: 0.5vw; margin-bottom: 0.5vw;" >
        <a href="maybelline_product.php"><img src="image\maybelline\m_small.jpg" style="width: 40%; height:auto;"></a>
        <a href="lakme.php"><img src="image/lakme/l_small.jpg" style="width: 40%; height:auto;"></a>
    </div>
<!-- over -->

<!-- div for shipment icon -->
    <div class="ship" style="background-color: lavenderblush; padding: 1vw;">
        <div class="" style="font-weight: bold; font-size:1vw;"> 
          <img src="image/free_ship.png" height="25px" width="25px" > Free Shipping Above &#8377 499  &nbsp; &nbsp; &nbsp;  &nbsp;  &nbsp;  100% Authentic Product Sourced Directly  
        </div>
    </div>
<!-- over -->

<!-- div for fragrence product -->
    <div style="margin-top: 0.5vw;">
      <div style="background-color:lavenderblush; font-size: 1.3vw;  padding: 1vw; font-weight: bold;  margin-bottom: 0.5vw;" > FRAGRENCE </div>
      <a href="parfume.php"> <img src="image/fragrance/fragrance.jpg" style="margin-bottom: 0.5vw; width: 80%; height:auto;"></a>
      <a href="parfume.php"> <img src="image/fragrance/frag.gif" style="width: 40%; height:auto;"> </a>
    </div>
<!-- over -->

<!-- div for featured brands -->
    <div  style="margin-top : 0.5vw; background-color: lavenderblush; padding: 1vw; font-size: 1.3vw; font-weight: bold;"> FEATURED BRANDS </div>
<!-- huda products -->
      <a href="huda_product.php">
        <img class="img" src="image/huda/huda_slide4.jpg" style="margin-top: 0.5vw;width: 80%; height:auto;">
      </a>
<!-- sugar products -->
      <a href="sugar.php">
        <img src="image/sugar/sugar_slide.jpg" style="margin-top: 0.5vw;width: 80%; height:auto;">
      </a>
<!-- revolution products -->
      <a href="revolution.php">
        <img src="image/revolution/revolution.jpg" style="margin-top: 0.5vw;width: 80%; height:auto;">
      </a>
<!-- loreal products -->
      <a href="#">
        <img src="image/loreal/loreal1.jpg" style="margin-top: 0.5vw;width: 40%; height:auto;">
      </a>
<!-- plam products -->
      <a href="#">
        <img src="image/plam/plam.jpg" style="margin-top: 0.5vw;width: 40%; height:auto;">
      </a>
<!-- mac products -->
      <a href="mac_product.php">
        <img src="image/mac/m_small.gif" style="margin-top: 0.5vw;width: 40%; height:auto;" >
      </a>
<!-- key products -->
      <a href="key_product.php">
        <img src="image/kay/k_small.jpg" style="margin-top: 0.5vw;width: 40%; height:auto;" >
      </a>
<!-- charlotte products -->
      <a href="charlotte.php">
        <img src="image/charlotte/c_small.jpg" style="margin-top: 0.5vw;width: 40%; height:auto;" >
      </a>    
</div> 
<!-- Homepage content over -->

<!-- footer -->
  <?php include"footer.php" ?>
<!-- footer over -->
</body>
</html>
