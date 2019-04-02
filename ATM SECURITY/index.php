<?php
session_start();
include("dbconnect.php");
extract($_REQUEST);
$msg="";
/*if(isset($btn))
{
include "php_serial.class.php";
$serial = new phpSerial;
$serial->deviceSet("COM8");
$serial->deviceOpen();
$serial->sendMessage("B");
$read = $serial->readPort();
$serial->deviceClose();
$serial->confBaudRate(9600);
$un=$read;
$q1=mysql_query("select * from atm_user where uname='$un'");
$n1=mysql_num_rows($q1);
	if($n1==1)
	{
	$r1=mysql_fetch_array($q1);
	$mob=$r1['mobile'];
	header("location:index.php?act=ok&user=$un&mobile=$mob");
	}
	else
	{
	header("location:index.php?act=no");
	}
}*/
if(isset($btn))
{

$qry=mysql_query("select * from atm_user where card='".trim($card)."'");
$row=mysql_fetch_array($qry);
$mobile=$row['mobile'];
$data=$row['uname'];
$message="Click this Link: http://projectone.in/webatm/index2.php?uname=$data";

	/*if($card=="0003984108")//"0004118757")
	{
	$data="A";
	}
	else if($card=="0004110597")//"0004158525")
	{
	$data="B";
	}*/
	
echo '<iframe src="http://pay4sms.in/sendsms/?token= b81edee36bcef4ddbaa6ef535f8db03e&credit=2&sender= RandDC&message='.$message.'&number=91'.$mobile.'" style="display:block"></iframe>';
	
?>
<script language="javascript">
alert("<?php echo $data." ".$card; ?> Input Accepted");
</script>
<?php
//$msg="Input Accepted";
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?php include("title.php"); ?></title>

<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <div align="center" class="hd"><?php include("title.php"); ?></div>
  <div class="sd"><!--<a href="index.php">Home</a>-->
    <div align="center"><a href="index.php">Home</a><a href="login.php">Admin</a></div>
  </div>
  <p>&nbsp;</p>
  <table width="42%" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#9AA1B3">
    <tr>
      <th scope="col"><img src="images/feature.jpg" width="400" height="400" /></th>
    </tr>
  </table>
  
  <p align="center">
    <input type="text" name="card" />
    <input type="submit" name="btn" value="Submit" />
</p>
  <p>&nbsp;</p>
  <p align="center" class="sd"><?php include("title.php"); ?></p>
</form>
</body>
</html>
