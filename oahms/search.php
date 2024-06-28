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
			<div class="blog-top">		
				<h3>Search Senior Citizen details by regsitration number</h3>
				<div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <form class="forms-sample" method="post">
                    
                   <div class="form-group">
                      <label for="exampleInputUsername1">Search By Registration Number</label>
                      <input type="text" id="searchdata" name="searchdata" class="form-control" required="required" autofocus="autofocus" >
                    </div>
                   
                   
                    <button type="submit" name="search" class="btn btn-info btn-min-width mr-1 mb-1">Search</button>
                  </form>
                </div>
              </div>
            </div>
     
          </div>
        </div>
			</div>
		<div class="table-responsive pt-3">
                  
                  <?php
if(isset($_POST['search']))
{ 

$sdata=$_POST['searchdata'];
  ?>
                <h4 class="card-title" style="padding-left: 20px; padding-top: 20px;">Result against "<?php echo $sdata;?>" keyword</h4>
                  <table class="table table-striped project-orders-table">
                    <thead>
                      <tr>
                        <th class="ml-5">#</th>
                        <th>Registration Number</th>
                        <th>Name</th>
                        <th>Contact Number</th>
                        <th>Date of Birth</th>
                        <th>Added By</th>
                        <th>Registration Date</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                         $query=mysqli_query($con,"select * from tblseniorcitizen where tblseniorcitizen.RegistrationNumber like '$sdata%'");
                         $num=mysqli_num_rows($query);
if($num>0){
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>
                      <tr>
                        <td><?php echo htmlentities($cnt);?></td>
                        <td><?php echo htmlentities($row['RegistrationNumber']);?> </td>
                        <td><?php echo htmlentities($row['Name']);?> </td>
                        <td><?php echo htmlentities($row['ContactNumber']);?> </td>
                        <td><?php echo htmlentities($row['DateofBirth']);?> </td>
                        <td><?php echo htmlentities($row['AddedBy']);?> </td>
                        <td><?php echo htmlentities($row['RegitrationDate']);?></td>
                        <td>
                          <div class="d-flex align-items-center">
                            <a href="view-scdetails.php?id=<?php echo $row['ID']?>" class="btn btn-success btn-sm btn-icon-text mr-3">View <i class="typcn typcn-edit btn-icon-append"></i> </a> 
                                            
                          </div>
                        </td>
                      </tr> <?php 
$cnt=$cnt+1;
} } else { ?>
  <tr>
    <td colspan="8"> No record found against this search</td>

  </tr>
   
<?php } }?>
                      
                    </tbody>
                  </table>


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