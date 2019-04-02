<?php
include("include/dbconnect.php");
extract($_POST);
$msg="";
if(isset($register))
{
 if(trim($name)=="") { $msg = "Enter the Name..."; }
 else if(trim($email)=="") { $msg = "Enter the E-mail..."; }
 else if(trim($uname)=="") { $msg = "Enter the Username"; }
 else if(trim($pwd)=="") { $msg = "Enter the Password"; }

	else
	{
	$max_qry = mysql_query("select max(id) maxid from register");
	$max_row = mysql_fetch_array($max_qry);
	$id=$max_row['maxid']+1;
	$rdate=date("Y-m-d");
	
		echo $uqry="insert into register(id,name,email,username,password,rdate) values($id,'$name','$email','$uname','$pwd','$rdate')";
		$res=mysql_query($uqry);
		if($res)
		{
		
		header("location:add_face.php?id=".$id);
		}
		else
		{
		$msg="Could not be stored!";
		}
	}	
	
}
else
{
echo '<p><embed src="audio/register.mp3" autostart="true" hidden="true"></embed></p>';
}
?>
<html>
<head>
<title><?php include("include/title.php"); ?></title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {
	color: #990000
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
    <tr>
      <td align="center"><?php include("include/header.php"); ?></td>
    </tr>
    <tr>
      <td><?php include("include/link_home.php"); ?></td>
    </tr>
    <tr>
      <td align="center"><p>&nbsp;</p>
        <p class="style1 style2"><?php echo $msg; ?></p>
        <table width="405" height="360" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="2" align="center"><strong>User Registration </strong></td>
          </tr>
          <tr>
            <td width="162">Name</td>
            <td width="162"><input type="text" name="name" value="<?php echo $_POST['name']; ?>"></td>
          </tr>
          <tr>
            <td>E-mail</td>
            <td><input type="text" name="email" value="<?php echo $_POST['email']; ?>"></td>
          </tr>
          <tr>
            <td>Username</td>
            <td><input type="text" name="uname" value="<?php echo $_POST['uname']; ?>" /></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type="password" name="pwd" value="<?php echo $_POST['pwd']; ?>" /></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><input type="submit" name="register" value="Register" /></td>
          </tr>
        </table>
        <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td align="center" class="subhead">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
