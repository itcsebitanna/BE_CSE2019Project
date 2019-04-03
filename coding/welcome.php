<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Time Session Login</title>
</head>
<body>
<form action="http://localhost/dashboard/upload1/upload.php" method="post"  enctype="multipart/form-data">
<form action="http://localhost/dashboard/upload1/download.php" method="get" id="down" enctype="multipart/form-data">
<center>
<?php
session_start();
if(isset($_SESSION["user"]))
{
 if((time() - $_SESSION['last_time']) > 60) // Time in Seconds
 {
 header("location:logout.php");
 }
 else
 {
 $_SESSION['last_time'] = time();
 echo "<h1 align='center'>Welcome ".$_SESSION["user"]. "</h1>";
 echo "<h3 align='center'>Automatic Logout after 1 minute of inactive</h3>";
 }
}
else
{
 header('Location:login.php');
}
?>
<input type="file" name="file"/>
<input type="submit" name="submit" value="Upload" id="up"/>
<input type="button" name="submit" value="Download" id="down"/>
<p align='center'><a href='logout.php'>Logout</a></p>
</center>
</form>
</body>
</html>