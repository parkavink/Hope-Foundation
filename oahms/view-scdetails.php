<?php
include('includes/config.php');
session_start();
error_reporting(0);

  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Old Age Home Management System || Search</title>
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
			<?php
                    $id=intval($_GET['id']);
                         $query=mysqli_query($con,"select * from tblseniorcitizen where tblseniorcitizen.ID='$id'");

while($row=mysqli_fetch_array($query))
{
?>
			<div class="blog-top">		
				<h3>View Detail of <?php echo htmlentities($row['Name']);?></h3>
			</div>
			<div class="blog-bottom">
				<div class=" single-top">
					
					<div class="left-blog">
						<a href="single.html"><img class="img-responsive" src="admin/images/<?php echo htmlentities($row['ProfilePic']);?>" width="300" height="300" alt="" /></a>
					</div>
					<div class="top-blog">
						<a class="fast" href="#"><h2>Date of Registration: <?php echo htmlentities($row['RegitrationDate']);?> </h2></a>
					<ul class="men-grid">
						<li><strong>Added By: </strong><?php echo htmlentities($row['AddedBy']);?><strong>, </li>
						<li>Registration Number: </strong><?php echo htmlentities($row['RegistrationNumber']);?></li>
					</ul>
					<p><strong>Date of Birth:</strong><?php echo htmlentities($row['DateofBirth']);?></p>
					<p><strong>Contact Number: </strong><?php echo htmlentities($row['ContactNumber']);?></p>
					<p><strong>Communication Address: </strong><?php echo htmlentities($row['CommunicationAddress']);?></p>
					<p><strong>Emergency Address: </strong><?php echo htmlentities($row['EmergencyAddress']);?>.</p>
					<p><strong>Emergency Contact Number: </strong><?php echo htmlentities($row['EmergencyContactnumber']);?>.</p>
					
					</div>
				<div class="clearfix"> </div>
			</div><?php } ?>
		</div>
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