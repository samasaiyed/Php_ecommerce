<?php
include_once 'connection.php';

$sql = "DELETE FROM product_rating WHERE rid= '" . $_GET["rid"] . "'";

if (mysqli_query($conn, $sql)) 
{
    header("location:admin_product_rating.php");
} 
else 
{
    echo "Error deleting record: " . mysqli_error($conn);
}
mysqli_close($conn);
?>