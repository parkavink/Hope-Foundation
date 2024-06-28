<?php
include('includes/config.php');
session_start();
error_reporting(0);

  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Hope Foundation Management System </title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" href="ww.css">

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
<?php include_once('includes/header.php');?>
	</div>	
</div>	
	 <div class="gallery-section">
		 	<div class="container">
		 		
		 			<div class="letest-section">
	 			<div class="container">
	 				<p>As a Hope member, you will join a thriving community at the heart of everything we do. Use your lived experience of disability to influence our strategy and guide our work.Joining our membership scheme is free. There is no set time commitment, and your membership does not expire.<br/>
  
All you need to do is fill out our membership form.</p>
<p style="font-weight:bold; size:14px;">Who can join</p>
<p>Our membership scheme is open to anyone 18 years old or over, who:<br/>
<ul><li>
shares our vision, mission and values</li>
<li>agrees to our members code of conduct</li></ul>
Our members include disabled people, parents and carers, and disability allies.</p>

  <div class="w3-dropdown-hover w3-right">
    <button class="w3-button w3-black">JOIN NOW</button>
    <div class="w3-dropdown-content w3-bar-block w3-border" style="right:0">
      <a href="add2.php" class="w3-bar-item w3-button">Registration</a>
     
	 				
	 				
    </div>
 </div><br/><br/><br/>
 <h2>Volunteering at Scope</h2>
There are lots of ways you can volunteer with us, using your skills and learning new ones. You will be supporting disabled people and their families.
<br/>
From shop assistants to online community or employment service volunteers. We have a volunteer opportunity for everyone.</p>

  <div class="w3-dropdown-hover w3-right">
    <button class="w3-button w3-black">JOIN NOW</button>
    <div class="w3-dropdown-content w3-bar-block w3-border" style="right:0">
      <a href="volunter.php" class="w3-bar-item w3-button">Registration</a>
   
	 				
	 				
    </div>
 </div>
			</div>
		</div>
<!-- /main -->
		<script src="js/classie.js"></script>
		<script src="js/cbpViewModeSwitch.js"></script>
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