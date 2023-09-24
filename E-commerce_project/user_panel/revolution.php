<?php

include 'connection.php';
$sql = "select *from product where brand = 'MAKEUP REVOLUTION' && status = 1";
$res = mysqli_query($conn,$sql);

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> Product card </title>
    <link rel="stylesheet" href="style.css">
<style type="text/css">
     *{
        box-sizing: border-box;
    }
    /* Float four columns side by side */
    .column
    {
        float: left;
        width: 25%;
        padding: 0 10px;
        margin-top: 1vw;
    }
    /* Remove extra left and right margins ,due to padding */
    .row 
    {
        margin: 0 -5px;
    /*  margin-bottom: 10px;*/
    }
    /* Clear floats after the column */
    .row:after
    {
        content: "";
        display: table;
        clear: both;
    }
    /* Responsive columns */
    @media screen and (max-width:  700px)
    {
        .column {
            width: 40%;
            display: block;
            margin-bottom: 1vw;
        }
    }
    /* Style the counter card */
    .card
    {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        padding: 1vw;
        text-align: center;
        background-color: #f1f1f1;
        /*height: 58vh;*/
        /*height: auto;
        width: auto;*/
    }
    .image
    {
        width: 70%;
        height: auto;
    }
    .title
    {
        padding: 10px 0;
        height: 10vh;
        overflow: hidden;
        text-overflow: ellipsis;
        font-size: 1vw;
    }
    .addtocard
    {
            border: none;
            outline: 0;
            padding: 1vw;
            color: white;
            background-color: purple;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 1vw;
            margin-bottom: 0.4vw;
    }
    .addtocard:hover
    {
         opacity: 0.7;
    }
    .price s{
        color: gray;
        font-size: 1vw;
    }
    .price{
        font-size: 1.1vw;
    }
    .text
    {
        text-align: center;
        padding: 10px 14px;
        font-weight: bold;
        font-size: 1.5vw;
        background-color:black;
        color: white;
        margin-bottom: 1vw;
        width: 100%;
    }
    .slide
    {
        background-color: lightgoldenrodyellow;
        margin:  auto;
        padding: 1vw;
        width: 80%;
        box-shadow: 0 4px 4px 0 brown;
    }
    .slide img
    {
        width: 80%;
        height: auto;
        padding: 1.2vw;
    }
    .slide p 
    {
        font-size: 1.5vw;
        color: black;
    }
    .out_of_stock
    {
        outline: 0;
        padding: 1vw;
        color: black;
        text-align: center;
        width: 100%;
        font-size: 1vw;
        margin-bottom: 0.4vw;
        opacity: 0.5;
    }
</style>
</head>
<?php include 'header.php';?>
<body>


<div class="brand-name"  style="margin-top: 100px;">
<div style="text-align: center; font-weight: bold; margin-top: 50px; font-size: 25px; color: darkred; "> Makeup Revolution(<?php echo mysqli_num_rows($res);?>) </div>
</div>

<!--<div class="slide" align="center">
                <img src="image/lakme/lakme_slide.jpg">
                <img src="image/pixi/pixi_slide.jpg">
</div>--> 
<div class="text" style="margin-top: 40px;"> All Products </div>
</div>
<?php // product list  ?>
<div class="container"> 
<div class="row"> 
    <?php while($row = mysqli_fetch_array($res)) { ?>
    <div class="column">
        <div class="card">

             <a href="wishlist.php?pid=<?php echo $row['pid'];?>" class="wish">
               <i style='font-size:20px;float: right;margin-top: 0px;margin-left: 0px;color: purple;' class='far' title="Add To wishlist">&#xf004;</i> 
            </a>

            <a href="product_detail.php?pid=<?php echo $row['pid'];?>"><img src="image\product\<?php echo $row['images'];?>" class="image" width="10" height="10"> </a>
            <p class="title"> <?php echo $row['title'] ;?>  </p>
             <?php if($row['mrp'] != $row['selling_price']) { ?>
                        <p class="price" name="price"> MRP :<s> <?php echo $row['mrp']; ?> </s> <?php echo $row['selling_price']; ?> </p>
                    <?php } 
                    else 
                    { ?>
                        <p class="price" name="sprice"> MRP : <?php echo $row['selling_price']; ?> </p>
        <?php  }  ?>
 <?php if($row['qty'] < 1 ) { ?>
        <label class="out_of_stock" name = "outofstock"> Out Of Stock </label>
       <?php }
    else {  ?>
<form action="manage_cart.php"  method="POST">
        <button type="submit" class="addtocard" name="addcart" >Add To Cart</button>  



        <input type="hidden" name="image" value="<img src='image\product\<?php echo $row['images'];?>'">
        <input type="hidden" name="pid" value="<?php echo $row['pid'];?>">
        <input type="hidden" name="pname" value="<?php echo $row['product_name'];?>">
        <input type="hidden" name="price" value="<?php echo $row['selling_price'];?>">
        <input type="hidden" name="brand" value="<?php echo $row['brand'];?>">


</form>
<?php } ?>
<a href="product_detail.php?pid=<?php echo $row['pid'];?>"><button type="submit" class="addtocard" name="view"> View Detail </button></a>

        </div>
    </div>
    <?php } ?>
</div>
</div>

<?php include 'footer.php';?>
</body>
</html>