<?php

if(isset($_POST['submit']))
{
	$file=$_FILES['file'];

	$file_name=$_FILES['file']['name'];
	$file_type=$_FILES['file']['type'];
	$file_size=$_FILES['file']['size'];
	$tmp_loc=$_FILES['file']['tmp_name'];
	$file_error=$_FILES['file']['error'];

	$fileExt=explode('.',$file_name);
	$fileActualExt=strtolower(end($fileExt));

	$allowed=array('jpg','jpeg','png','pdf');

	if(in_array($fileActualExt,$allowed)){
		if($file_error == 0){
			if($file_size < 5000000)
			{
				$file_destination="uploads/".$file_name;
				$uploaded=move_uploaded_file($tmp_loc , $file_destination);
				if($uploaded){
					echo "File successfully uploaded</br>";
					include "download.php";					
				}else{
					echo "Sorry Failed";
				}			
			}else{
				echo "Your file is too big!";
			}
		}else{
			echo "There was an error uploading your file!";
		}

	}else{
		echo "You cannot upload files of this type";
	}	
}
?>