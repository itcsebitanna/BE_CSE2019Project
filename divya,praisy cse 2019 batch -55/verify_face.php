<?php
include("include/protect.php");
include("include/dbconnect.php");
$uname=$_SESSION['uname'];
extract($_REQUEST);

$uname=$_SESSION['uname'];
$q1=mysql_query("select * from register where username='$uname'");
$r1=mysql_fetch_array($q1);
$_SESSION['fid']=$r1['id'];
$id=$r1['id'];
if(isset($btn))
{
$_SESSION['id']=$id;
header("location:view2.php?id=".$id);
?>
<script language="javascript">
//alert("Face Recognition Verified");
</script>
<?php
}
	
?>
<html>
<head>
<title><?php include("include/title.php"); ?></title>
<link href="style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" language="javascript"  id="validate" >

   /* function processspeech() {

        var val;
        val = document.form1.get_txt.value;
        //alert("" + val);
//        if (val == "golden lane") {
//            document.form1.speech.value = "rice";
//        }
//        else if (val == "hello") {
//            document.form1.speech.value = "Wheat";
//        }
//        document.form1.get_txt.value =val;
		if(val=="yes")
		{
		window.location="inbox.php?get_txt="+val;
		}
		if(val=="inbox")
		{
		window.location="inbox.php";
		}
		else if(val=="compose")
		{
		window.location="user_page.php";
		}
		else if(val=="sent")
		{
		window.location="sent.php";
		}
		else if(val=="contact")
		{
		window.location="contact.php";
		}
		else if(val=="trash")
		{
		window.location="trash.php";
		}
		else if(val=="logout")
		{
		window.location="logout.php";
		}
		else
		{
		window.location="inbox.php?getuser="+val;
		}
		
    }*/
	
</script>
     
	 <script src="js/jquery.min.js"></script>
    <script src="js/webcam.min.js"></script>
    <link rel="stylesheet" href="js/bootstrap.min.css" />
	
    <style type="text/css">
        #results { padding:20px; border:1px solid; background:#ccc; }
    </style>
</head>

<body>
<form action="upload2.php" method="POST" enctype="multipart/form-data">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
    <tr>
      <td align="center"><?php include("include/header.php"); ?></td>
    </tr>
    <tr>
      <td align="left" class="subhead"><?php include("include/link_user.php"); ?></td>
    </tr>
    <tr>
      <td align="center" valign="top"><p class="txt1">&nbsp;</p>
	    <p class="txt1">&nbsp;</p>
		 <div class="row">
            <div class="col-md-6">
                <div id="my_camera"></div>
                <br/>
                <input type=button value="Take Snapshot" onClick="take_snapshot()">
                <input type="hidden" name="image" class="image-tag">
            </div>
            <div class="col-md-6">
                <div id="results">Your captured image will appear here...</div>
            </div>
            <div class="col-md-12 text-center">
                <br/>
                <input type="submit" class="btn btn-success" value="Submit" />
            </div>
			
           
      </div>
        <p class="txt1">&nbsp;</p>
      <p class="txt1">&nbsp;</p>
      <p></p>      <p></p></td>
    </tr>
    <tr>
      <td align="center" class="subhead">&nbsp;</td>
    </tr>
  </table>
     <script language="JavaScript">
    Webcam.set({
        width: 490,
        height: 390,
        image_format: 'jpeg',
        jpeg_quality: 90
    });
  
    Webcam.attach( '#my_camera' );
  
    function take_snapshot() {
        Webcam.snap( function(data_uri) {
            $(".image-tag").val(data_uri);
            document.getElementById('results').innerHTML = '<img src="'+data_uri+'"/>';
        } );
    }
</script>

</form>
</body>
</html>
