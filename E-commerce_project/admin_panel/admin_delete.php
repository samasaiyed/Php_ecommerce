<?php
include_once 'connection.php';

$sql = "DELETE FROM admin WHERE aid= '" . $_GET["aid"] . "'";

if (mysqli_query($conn, $sql)) 
{
    header("location:admin_detail.php");
} 
else 
{
    echo "Error deleting record: " . mysqli_error($conn);
}
mysqli_close($conn);
?>
	


