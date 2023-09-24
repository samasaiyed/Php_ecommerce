<?php include 'connection.php'; 

if(isset($_POST['submit']) and isset($_FILES['image']))
{
    $cid = $_POST['cid'];
    $pname = $_POST['pname'];
    $brand = $_POST['bid'];
    $mrp = $_POST['mrp'];
    $price = $_POST['price'];
    $qty = $_POST['qty'];
    $image = $_FILES['image']['name'];
    $title = $_POST['title'];
    $desc = nl2br($_POST['desc']);
    $ingre = nl2br($_POST['ingredients']);
    $how = nl2br($_POST['howtouse']);
    $status = $_POST['check'];



    $targetDir = "image/product/";
    $filename = basename($image);
    $targetfilepath = $targetDir . $filename;
    $filetype = pathinfo($targetfilepath,PATHINFO_EXTENSION);

    if(!empty($cid) && !empty($pname) && !empty($brand) && !empty($mrp) && !empty($price) && !empty($qty) && !empty($image) && !empty($title) && !empty($desc))
    {
        $allow = array('jpg','jpeg','gif','png');
        if(in_array($filetype,$allow))
        {
            if(move_uploaded_file($_FILES['image']['tmp_name'],$targetfilepath))
            {
            	 if($status == true)
    			{
    				$status = 1;
   				}
    			else
   				{
    				$status = 0;
    			}

$query = "INSERT INTO product(category,product_name,brand,mrp,selling_price,qty,images,title,description,ingredients,howto,status) VALUES ('".$cid."','".$pname."','".$brand."','".$mrp."','".$price."','".$qty."','".$filename."','".$title."','".$desc."','".$ingre."','".$how."','".$status."')";
                $query_run = mysqli_query($conn,$query);

               

                if($query_run)
                {
                    echo "product inserted successfully";
                    header("location:admin_product_detail.php");
                    exit(0);
                }
                else
                {
                    echo "something went wrong".mysqli_error($conn);
                    exit(0);
                }
            }
            else
            {
                echo "there was an error uploading file.".mysqli_error($conn);
                exit(0);
            }
        }
        else
        {
            echo "only JPG,JPEG,PNG,GIF file allowed".mysqli_error($conn);
            exit(0);
        }
    }
    else
    {
        echo "please fill the fields.".mysqli_error($conn);
        exit(0);
    }

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
							<div align="center" class="product"> <a href="admin_product_detail.php"> Back </a>ADD NEW PRODUCT </div>
							<tr>
							   <td class="label">	Category </td>
							   <td class="input">
								<?php 
 									$sel = "SELECT *FROM category";
 									$sel_run = mysqli_query($conn,$sel);

 									if(mysqli_num_rows($sel_run) > 0)
 									{
 								?>   	<select name = "cid"> 
 											<?php foreach ($sel_run as $category) { ?>
 												<option value="<?= $category['category'] ?>"> <?= $category['category'] ?></option>
 										<?php	}  ?>

 										</select>	
 								<?php	} ?>
 								</td>
							</div>
						</tr>
						<tr>
							<td class="label"> Product Name </td>
							<td class="input"> <input type="text" name="pname" placeholder="Enter Product Name"> </td>
						</tr>
						<tr> 
							<td class="label"> Brand </td>
							<td class="input"> 
								<?php 
 									$sel = "SELECT *FROM brand";
 									$sel_run = mysqli_query($conn,$sel);

 									if(mysqli_num_rows($sel_run) > 0)
 									{
 								?>   	<select name = "bid"> 
 											<?php foreach ($sel_run as $brand) { ?>
 												<option value="<?= $brand['brand'] ?>"><?= $brand['brand'] ?></option>
 										<?php	}  ?>

 										</select>	
 								<?php	} ?>
							</td>
						</tr>
						<tr>
							<td class="label"> MRP </td>
							<td class="input"> <input type="text" name="mrp" placeholder="Enter price"> </td>
						</tr>
						<tr>
							<td class="label"> Selling Price </td>
							<td class="input"> <input type="text" name="price" placeholder="Enter Selling Price"></td>
						</tr>
						<tr>
							<td class="label"> Qty </td>
							<td class="input"> <input type="text" name="qty" placeholder="Enter Quantity"> </td>
						</tr>
						<tr>
							<td class="label"> Product images </td>
							<td class="input"> <input type="file" name="image"> </td>
						</tr>
						<tr> 
							<td class="label"> Title </td>
							<td class="input"> <input type="text" name="title" placeholder="Product Title"> </td>
						</tr>
						<tr>
							<td class="label"> Description </td>
							<td class="input"><textarea name="desc" placeholder="Product Description"></textarea> </td>
						</tr>
						<tr>
							<td class="label"> Ingredients </td>
							<td class="input"><textarea rows="4" cols="50" name="ingredients" placeholder="Ingredients"></textarea> </td>
						</tr>
						<tr>
							<td class="label"> How to use </td>
							<td class="input"><textarea rows="4" cols="50" name="howtouse" placeholder="How to use"></textarea> </td>
						</tr>
						<tr>
							<td class="label"> Status </td>
							<td> <input type="checkbox" name="check"> </td>
						</tr>
						<tr> <td colspan="2" align="center"> <input type="submit" name="submit" value="Save Product"> </td> </tr>
		</form>
		</table>
</section>
</body>
</html>