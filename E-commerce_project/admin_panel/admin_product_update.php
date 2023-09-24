<?php 

include 'connection.php'; 

if(isset($_POST['update']) and isset($_FILES['image']))
{
    $pid = $_POST['pid'];
    $cid = $_POST['cid'];
    $pname = $_POST['pname'];
    $brand = $_POST['bid'];
    $mrp = $_POST['mrp'];
    $price = $_POST['price'];
    $qty = $_POST['qty'];
    $title = $_POST['title'];


    $description =mysqli_real_escape_string($conn,nl2br($_POST['description']));
    $ingre =mysqli_real_escape_string($conn,nl2br($_POST['ingredients']));
    $howto =mysqli_real_escape_string($conn,nl2br($_POST['howtouse']));

     $image = $_FILES['image']['name'];
     $old_image = $_POST['old_image'];

     if($image != '')
     {
        $update_filename = $_FILES['image']['name'];

     }
     else
     {
        $update_filename = $old_image;
     }


     
        $query = "UPDATE product SET category='$cid',product_name='$pname',brand='$brand',mrp='$mrp',selling_price='$price',qty='$qty',images='$update_filename',title='$title',description='$description',ingredients='$ingre',howto='$howto'  WHERE pid='$pid' ";
        $query_run = mysqli_query($conn,$query);

        if($query_run)
        {
            if($_FILES['image']['name'] != '')
            {
                move_uploaded_file($_FILES['image']['tmp_name'],"image/product/".$_FILES['image']['name']);
              //  unlink("image/product/".$old_image);
            }
            echo "product updated successfully";
            header("location:admin_product_detail.php");
            exit(0);
        }
        else
        {
            echo "product not  updated ";
            header("location:admin_product_update.php");
            exit(0);
        }
   
}

if(isset($_GET['pid']))
{
    $sql = "SELECT * FROM product WHERE pid = '".$_GET['pid']."' "; 
    $query = mysqli_query($conn,$sql) or die(mysqli_error($conn));
    $row = mysqli_fetch_array($query);
}

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <style type="text/css">
        .section3
        {
            margin-top: 20px;
            background-color: cyan;
            width: 80%;
            float: right;
            background-color: lavender;
        }
        table
        {
            margin-bottom: 20px;
        }
        .section3 .card table th
        {
            padding: 10px; 
            background-color: gray;
            color: maroon;
            font-weight: bold;
            font-size: 20px;
        }
        .section3 .card table .label
        {
            padding: 10px;
            width: 200px;
            font-size: 19px;
            font-weight: bold;
        }
        .section3 .card table .input
        {
            padding: 10px;
            width: 400px;
            font-size: 19px;
            font-weight: bold;
        
        }
        input[type = submit]
        {
            background-color: maroon;
            color: white;
            padding: 10px;
            font-weight: bold;
            font-size: 20px;
            width: 100%;
            cursor: pointer;
        }
        input[type = text]
        {
            font-size: 15px;
            width: 90%;
            padding: 8px;
        }
        select
        {
            font-size: 15px;
            width: 95%;
            padding: 8px;
        }
        .product
        {
            font-size: 21px;
            background-color: maroon; 
            color: white; 
            padding: 10px;
            margin-bottom: 20px;
        }
        .product a
        {
            text-decoration: none;
            float: left;
            color: white;
        }
    </style>
</head>
<body>
<?php include 'index.php'; ?>
<section class="section3">
<div class="card">
    
            <table border="1" align="center">
            <form name="addproduct" method="post" enctype="multipart/form-data">        
                            <div align="center" class="product"> <a href="admin_product_detail.php"> Back </a> UPDATE PRODUCT </div>
                            <tr>

                        <tr>
                            <td class="label"> Product Id </td>
                            <input type="hidden" name="pid" value="<?php echo $row["pid"]; ?>" >
                            <td class="input"> <input type="text" name="pid" value="<?php echo $row["pid"]; ?>" > </td>

                        </tr>       
                               <td class="label">   Category </td>
                               <td class="input">
                                <?php 
                                    $sel = "SELECT *FROM category";
                                    $sel_run = mysqli_query($conn,$sel);

                                    if(mysqli_num_rows($sel_run) > 0)
                                    {
                                ?>      <select name = "cid">
                                            <?php foreach ($sel_run as $category) { ?>
                                                <option value="<?= $category['category'] ?>" <?= $row['category']  == $category['category'] ? 'selected':'' ?> > 
                                                    <?= $category['category'] ?>
                                                </option>
                                        <?php   }  ?>

                                        </select>   
                                <?php   } ?>
                                </td>
                            </div>
                        </tr>
                        <tr>
                            <td class="label"> Product Name </td>
                            <td class="input"> <input type="text" name="pname" value="<?php echo $row["product_name"]; ?>"> </td>
                        </tr>
                        <tr> 
                            <td class="label"> Brand </td>
                            <td class="input"> 
                                <?php 
                                    $sel = "SELECT *FROM brand";
                                    $sel_run = mysqli_query($conn,$sel);

                                    if(mysqli_num_rows($sel_run) > 0)
                                    {
                                ?>      <select name = "bid"> 
                                            <?php foreach ($sel_run as $brand) { ?>
                                                <option value="<?= $brand['brand'] ?>" <?= $row['brand']  == $brand['brand'] ? 'selected':'' ?> >
                                                    <?= $brand['brand'] ?>
                                                </option>
                                        <?php   }  ?>

                                        </select>   
                                <?php   } ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="label"> MRP </td>
                            <td class="input"> <input type="text" name="mrp" value="<?php echo $row["mrp"]; ?>" > </td>
                        </tr>
                        <tr>
                            <td class="label"> Selling Price </td>
                            <td class="input"> <input type="text" name="price" value="<?php echo $row["selling_price"]; ?>"></td>
                        </tr>
                        <tr>
                            <td class="label"> Qty </td>
                            <td class="input"> <input type="text" name="qty" value="<?php echo $row["qty"]; ?>"> </td>
                        </tr>
                        <tr>
                            <td class="label"> Product images </td>
                            <td class="input"> 
                                <input type="file" name="image">
                                <input type="hidden" name="old_image" value="<?php echo $row['images']; ?>">
                                <img src="<?php echo 'image/product/'.$row['images']; ?>" width="100px" height="100px">
                            </td>
                        </tr>
                        <tr> 
                            <td class="label"> Title </td>
                            <td class="input"> <input type="text" name="title" value="<?php echo $row["title"]; ?>"> </td>
                        </tr>
                        <tr>
                            <td class="label"> Description </td>
                            <td class="input"><textarea rows="4" cols="50" name="description"><?php echo $row["description"]; ?></textarea> </td>
                        </tr>

                        <tr>
                            <td class="label"> Ingredients </td>
                            <td class="input"><textarea rows="4" cols="50" name="ingredients"><?php echo $row["ingredients"]; ?></textarea> </td>
                        </tr>

                        <tr>
                            <td class="label"> How to use </td>
                            <td class="input"><textarea rows="4" cols="50" name="howtouse"><?php echo $row["howto"]; ?></textarea> </td>
                        </tr>
                
                        <tr> <td colspan="2" align="center"> <input type="submit" name="update" value="Update Product"> </td> </tr>
        </form>
        </table>
</section>
</body>
</html>