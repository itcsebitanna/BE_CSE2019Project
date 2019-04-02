<?php
include("include/protect.php");
include("include/dbconnect.php");
$uname=$_SESSION['uname'];
extract($_POST);

$id=$_REQUEST['id'];
$q1=mysql_query("select * from receiver where id='$id'");
$r1=mysql_fetch_array($q1);
$id=$r1['id'];
$fname=$r1['filename'];
if($r1['view_st']=="0")
{
mysql_query("update receiver set view_st=1 where id=$id");
}
?>
<html>
<head>
<title><?php include("include/title.php"); ?></title>
<link href="style.css" rel="stylesheet" type="text/css">


</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
    <tr>
      <td colspan="2" align="center"><?php include("include/header.php"); ?></td>
    </tr>
    <tr>
      <td colspan="2" align="left" class="subhead"><?php include("include/link_user.php"); ?></td>
    </tr>
    <tr>
      <td width="17%" align="center" valign="top"><p class="txt1">&nbsp;</p>
	  <?php include("include/link_left.php"); ?>
        <p class="txt1">&nbsp;</p>
      <p></p></td>
      <td width="83%" align="center" valign="top"><p class="txt1">&nbsp;</p>
        <p class="txt1"><strong>Welcome <?php echo $uname; ?></strong></p>
        <table width="708" border="0" cellpadding="5" cellspacing="0">
          <tr>
            <td width="431" class="subhead2"><?php echo $r1['subject']; ?></td>
          </tr>
		 
          <tr class="hd1">
            <td>From : <?php echo $r1['uname']; ?>, Date/Time : <?php echo $r1['rdate']; ?></td>
          </tr>
          <tr class="hd1">
            <td><?php echo $r1['message']; ?></td>
          </tr>
          <tr class="hd1">
            <td>
			
			<?php
			$fid=$r1['fid'];
		  $q4=mysql_query("select * from user_files where uname='$uname' && mid=$fid");
		  while($r4=mysql_fetch_array($q4))
		  {
		  echo '<a href="download.php?file1='.$r4['fname'].'&folder1=upload">'.$r4['fname'].'</a>'."<br>";
		  }
		  ?>
			<!--<embed src="webtts/<?php //echo $fname; ?>" autostart="true"></embed>-->
			
			</td>
          </tr>
        </table>
        <p class="txt1"><a href="inbox.php">Back to Inbox </a></p>
        <p></p>
      <p></p></td>
    </tr>
    <tr>
      <td colspan="2" align="center" class="subhead">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
