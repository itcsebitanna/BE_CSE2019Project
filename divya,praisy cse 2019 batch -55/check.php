<?php
session_start();
include("include/dbconnect.php");
//$voterid = $_SESSION['voterid'];
$id=$_REQUEST['id'];
//echo $id=$_SESSION['id'];
$query=mysql_query("select * from register where id='$id'");
$res= mysql_fetch_array($query);
//$id = $res['id'];
$unamee = $res['name'];

require 'image.compare.class.php';

$image1 = "upload/F".$id.".jpg";
$image2 = "upload/S".$id.".jpg";

$class = new compareImages;
$value =  $class->compare($image1,$image2);

$image3 = "uploads/F".$id.".jpg";
$image4 = "uploads/S".$id.".jpg";

$class1 = new compareImages;
$value1 =  $class1->compare($image3,$image4);

//echo $value;
//echo "<br>";
//echo $value1;

if($value1<=25)
{
//mysql_query("update register set face_st='1' where id=$id");
?>
<script language="javascript">
window.location.href="verify_finger.php?id=<?php echo $id; ?>";
</script>
<?php
}
else
{
?>
<script language="javascript">
alert("Wrong!");
window.location.href="verify_face.php?id=<?php echo $id; ?>";
</script>
<?php
}

?>