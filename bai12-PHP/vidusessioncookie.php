<?php
//1. sessions
session_start(); //Bắt đầu sessions
$_SESSION['Name']= "user";

echo "Sessions Name: " . $_SESSION['Name'];

//2. cookie
$cookieName = "user";
$cookieValue = " Thanh Tung";

setcookie($cookieName, $cookieValue, time() + 86400, "/");
if(isset($_COOKIE[$cookieName])){
    echo "cookie đã tồn tại";
}else{
    echo "cookie chưa được thiết lập!";
}
?>