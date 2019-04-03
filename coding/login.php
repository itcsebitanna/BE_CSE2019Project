<?php
include 'conn.php'; // Database connection
session_start();
if(isset($_POST["submit"])){
 $_SESSION["user"] = $_POST["user"];
 $_SESSION["pass"] = $_POST["pass"];
 $_SESSION['last_time'] = time();
 {
 if(!empty($_POST['user']) && !empty($_POST['pass'])){
 $user = $_POST['user'];
 $pass = $_POST['pass'];
 //selecting database
 $query = mysqli_query($conn, "SELECT * FROM userpass WHERE user='".$user."' AND pass='".$pass."'");
 $numrows= mysqli_num_rows($query);
 if($numrows !=0)
 {
 while($row = mysqli_fetch_assoc($query))
 {
 $username=$row['user'];
 $password=$row['pass'];
 }
 if($user == $username && $pass == $password)
 {
 //Redirect Browser
 header('Location:welcome.php');
 }
 }
 else
 {
 echo "Invalid Username or Password!";
 }
 }
 else
 {
 echo "Required All fields!";
 }
 }
}
?>
<!doctype html>
<html>
<form method="post">
<input type="text" name="user" id="user" placeholder="Enter Username"><br/><br/>
<input type="password" name="pass" id="pass" placeholder="Enter Password"><br/><br/>
<input type="submit" name="submit" value="Submit">
</form></body>
</html>