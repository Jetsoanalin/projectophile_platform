<?php
include('dbcon.php');
include('session.php');
$content = $_POST['content'];
$conn->query("insert into post (content,date_posted,member_id,location,photos_id) values('$content',NOW(),'$session_id','$location','$photos_id')");
header('location:home.php');
?>