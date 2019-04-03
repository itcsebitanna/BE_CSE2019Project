<?php

{
	$files =scandir("uploads");
	for($a=1; $a<=count($files); $a++){
		?>
	<p>
		<a href="uploads/<?php echo $files[$a]?>" download><?php echo $files[$a],'</br>'?></a>
	</p>
<?php	
} ?>
