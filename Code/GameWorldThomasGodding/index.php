<?php

	$menu = "inc/header.php";
	$footer = "inc/footer.php";

?>
<!DOCTYPE html>
<html>
  <head>
	 <meta charset="UTF-8">
	 <meta name="description" content="Game Hunters">
	 <link rel="stylesheet" type="text/css" href="css/style.css">
	 <title>Game Hunters</title>
  </head>
<body>
  <?php
      include("inc/header.php");
  ?>
  	<div id="banner">
			<img src="images/banner.png" alt="" width="1105px" height="250px"/>
			<h2><span>Game Hunters is one of the cheapest sites to buy your favorite game!</h2>
	</div>

	<div class="platform-container">

		<div class="platform-pc">
				 	<a href="games.php?category_id=1">
					<img src="images/gamepics/windowslogo.jpg" height="200" width="350" alt="" class="image"></a>


		 	</div>

		<div class="platform-xbox">
					<a href="games.php?category_id=2">
					<img src="images/gamepics/xboxonelogo.jpg" height="200" width="350" alt="" class="image"></a>

			</div>

	 	<div class="platform-ps4">
						<a href="games.php?category_id=3">
						<img src="images/gamepics/ps4logo.jpg" height="200" width="350" alt="" class="image"></a>


			</div>
	</div>

	<?php
    if (file_exists($footer))
    {
      include($footer);
    }

   ?>
</body>
</html>
