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
<!--/start-footer-->
	<!--content-->

	<div class="content">
	<div class="blog">
		<div class="container">	
        
        
       
       <p style="color:#000; font-size:24px; font-weight:bolder">How our helpline can support you</p>
        <p>
Our advisers can answer questions and talk you through a wide range of topics connected with disability, including:
<ul>
<li>
benefits</li>
<li>finance</li>
<li>social care</li>
<li>work</li>
<li>equipment and assistive technology</li>
<li>housing and home adaptations</li></ul>
We can also point you to other information providers and Scope services in your local area.
</p>
 <p style="color:#000; font-size:24px; font-weight:bolder">Helpline</p>
 <p>
Scope's helpline provides free, independent and impartial advice and support on issues that matter to disabled people and their families.  <br/>

Phone: 0808 800 3333.<br/>

Email: helpline@hope.org.in.<br/>

Textphone: dial 044 then 0808 800 3333.<br/>

Calls are free from landlines and mobiles.<br/></p>

 <p style="color:#000; font-size:24px; font-weight:bolder">Opening times</p><p>
We are experiencing high demand at the moment. You might get a quicker response if you call between 10am and 12pm.<br/>

Monday to Friday, 9am to 6pm.<br/>

Saturday and Sunday, 10am to 6pm<br/>

Most bank holidays </p>
        
        
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