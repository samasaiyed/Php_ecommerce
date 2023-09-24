<?php
include 'connection.php';
$sql = "DELETE FROM brand WHERE bid= '" . $_GET["bid"] . "'";
if (mysqli_query($conn, $sql))
{
   echo "Record deleted successfully";
   header("location:admin_brand.php");
}
else {
  echo "Error deleting record: " . mysqli_error($conn);
}
?>