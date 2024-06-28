<?php
include('includes/config.php');
session_start();
error_reporting(0);

if(isset($_POST['submit']))
  {
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $message=$_POST['message'];
     
    $query=mysqli_query($con, "insert into tblcontact(FirstName,LastName,Phone,Email,Message) value('$fname','$lname','$phone','$email','$message')");
    if ($query) {
   echo "<script>alert('Your message was sent successfully!.');</script>";
echo "<script>window.location.href ='contact.php'</script>";
  }
  else
    {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}
  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Old Age Home Management System || Contact Us Page</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--Custom Theme files-->


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
		
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
<!--webfonts-->
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic,400italic,700italic|Niconne' rel='stylesheet' type='text/css'>
	<!--webfonts-->
</head>
<body>
<!--header-->
	<?php include_once('includes/header.php');?>
	</div>	
</div>	
		 <!--start-content-->
		    <div class="contact_desc">
		        <div class="container">
		        	<h2>Contact Us</h2>
			         <div class="contact-form">
				  	   <form method="post" class="left_form">
					    	<div>
						    	<span><label>First Name</label></span>
						    	<span><input required="true" name="fname" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>Last Name</label></span>
						    	<span><input required="true" name="lname" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>Contact Number</label></span>
						    	<span><input required="true" name="phone" pattern="[0-9]+" maxlength="10" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input required="" name="email" type="text" class="textbox"></span>
						    </div>
						   
					   
					        <div>					    	
						    	<span><label>Message</label></span>
						    	<span><textarea required="true" name="message"> </textarea></span>
						    </div>
						   <div>
						   		<input type="submit" value="Submit " name="submit" />
						  </div>
					    </form>
					    <div class="clearfix"></div>
				  </div>
				 <div class="content_bottompart">
				 	<div class="company_address">
				 		 <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
				     	<h3>Location</h3>
						    	<p><?php  echo $row['PageDescription'];?></p>
						   		
				   		<p>Phone:+91 96789 12345</p>
				   		<p>Lan: 0422 56891</p>
				 	 	<p>Email: info@hope.com</p><?php } ?>
				   		
				     </div>
	
				      <div class="clearfix"></div>
	                </div>	
	             </div>  
	          </div>
	<!--/start-footer-->
	<?php include_once('includes/footer.php');?>
								<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
					<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>



</body>
</html>		