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
<?php include_once('includes/header.php');?>
	</div>	
</div>	
	<!--start-about-->
	<div class="About-section">
	 	<div class="container">
	 		<h3>ABOUT US</h3>
	 		<div class="about-part">
		 		<div class="about-pic">
		 			<img class="img-responsive" src="images/about.jpg" alt="" />
		 		</div>
 		  <div class="about-textside">
		 			<p style="text-align:justify;">
                    Everyday Equality is our name for Hope  5-year strategy for 2017 to 2022. It sets out how we will drive social change so the 16 million disabled people in the India  have equal opportunities.</p>
<p style="text-align:justify;">Everyday Equality is about fairness, justice and rights – at home, at school, at work and in our communities. It's about not feeling inferior, not being treated unfairly, not being overlooked because of who we are.</p><p style="text-align:justify;">
Disabled people have told us the challenges they face are changing. So we're changing to meet those challenges with them and become the go-to organisation for disability.<br/></p><p><br/></p>

	
</div><div style="float:left;padding: 1em 0em 0em 2em;">
		 		
                
<h2 style="color:#FFF;">Vision, mission and values</h2>
<h4 style="font-weight:bold;">Our vision</h4>
We are Scope. We won't stop until we achieve a society where all disabled people enjoy equality and fairness.
<h4 style="font-weight:bold;">Our mission</h4>
We are determined to change the future. Together, as a collective movement of:
<ul><li>
disabled people</li>
<li>campaigners</li>
<li>donors</li>
<li>volunteer</li>
<li>communities</li>
</ul>

<h5 style="color:#CFC;">We work every day to challenge attitudes and end disability inequality.
An Equal Future is possible.</h5>



		 	
                </div>
		 		<div class="clearfix"> </div>  
	 		</div>
	 		<!--Our-inspiration-->
	 		
	 			<!--Our-inspiration-->
	 	</div>
	 </div>
	
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