<?php
include_once 'connection.php';

$sql = "DELETE FROM category WHERE cid= '" . $_GET["cid"] . "'";

if (mysqli_query($conn, $sql)) 
{
    header("location:admin_category.php");
} 
else 
{
    echo "Error deleting record: " . mysqli_error($conn);
}
mysqli_close($conn);
?>
	

