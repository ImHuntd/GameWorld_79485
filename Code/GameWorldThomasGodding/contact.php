<?php
	include("inc/header.php");
	?>
	<div class="whitebox-container">

		<div class="description">
			<div id="info">
				<?php
				//if "email" variable is filled out, send email
				if (isset($_REQUEST['email']))  {

  					//Email information
					$admin_email = "imhuntd@gmail.com";
					$email = $_REQUEST['email'];
					$subject = $_REQUEST['subject'];
					$comment = $_REQUEST['comment'];

  					//send email
					mail($admin_email, $subject, $comment, "From:" . $email);

  					//Email response
					echo "Thanks for contacting us!";
				}

  				//if "email" variable is not filled out, display the form
				else  {
					?>
					<form method="post">

						<h3>Email:</h>
							<br />
						 <input name="email" type="text" />
						<h3>Subject:</h3>
						 <input name="subject" type="text" />
						<h3>Message:</h3>
						<textarea name="comment" rows="10" cols="30"></textarea>
						<br />
						<input type="submit" class=button value="Submit" />
					</form>
					<?php
				}
				?>

				<?php
				include("inc/footer.php")
				?>
			</body>

			</html>
