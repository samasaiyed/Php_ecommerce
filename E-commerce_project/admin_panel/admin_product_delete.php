<?php
include_once 'connection.php';

$sql = "DELETE FROM product WHERE pid= '" . $_GET["pid"] . "'";

if (mysqli_query($conn, $sql)) 
{
    header("location:admin_product_detail.php");
} 
else 
{
    echo "Error deleting record: " . mysqli_error($conn);
}
mysqli_close($conn);
?>