<?php
session_start();
$fid=$_SESSION['id'];
//$fname=$_FILES['file']['name'];
//move_uploaded_file($_FILES['file']['tmp_name'],"upload/".$fname);
/*if (isset($GLOBALS["HTTP_RAW_POST_DATA"])) {
  $imageData=$GLOBALS['HTTP_RAW_POST_DATA'];
  $filteredData=substr($imageData, strpos($imageData, ",")+1);
  $unencodedData=base64_decode($filteredData);
  
  $fname="F".$fid.".jpg";
  $fp = fopen("upload/$fname", "wb" );
  fwrite( $fp, $unencodedData);
  fclose( $fp );
}*/



/*$data = $_POST['imgData'];
$file = "upload/file.jpg";
$uri =  substr($data,strpos($data,",")+1);
file_put_contents($file, base64_decode($uri));
echo $file;*/

 $img = $_POST['image'];
    $folderPath = "upload/";
  
    $image_parts = explode(";base64,", $img);
    $image_type_aux = explode("image/", $image_parts[0]);
    $image_type = $image_type_aux[1];
  
    $image_base64 = base64_decode($image_parts[1]);
    $fileName = "F".$fid.".jpg";//uniqid() . '.png';
  
    $file = $folderPath . $fileName;
    file_put_contents($file, $image_base64);
  
   // print_r($fileName);

?>
<script language="javascript">
window.location.href="home.php";
</script>
