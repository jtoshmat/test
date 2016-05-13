<?php
session_start();
if(!isset($_SESSION["user"])) {
    header("Location:../login.php");
}
require_once '../template/header.php'?>
<div class="container">
<h1>Welcome to the members page</h1>
<?php
if(isset($_REQUEST['message'])) {
    echo "<div class='alert alert-success'>{$_REQUEST['message']}</div>";
}

?>
</div>
<?php require_once '../template/footer.php'?>
