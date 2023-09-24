<?php
session_start();
unset($_SESSION['admin_name']);
unset($_SESSION['admin_email']);
header("location:admin_login.php");
?>