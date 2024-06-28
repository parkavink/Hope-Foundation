<?php
include('includes/config.php');
session_start();
error_reporting(0);

if(isset($_POST['submit']))
{
$namesc=$_POST['namesc'];
$dob=$_POST['dob'];
$contnum=$_POST['contnum'];
$pdisable=$_POST['phy'];
$proof=$_POST['proof'];
$commadd=$_POST['commadd'];
$profile=$_POST['propic'];
$username=$_POST['username'];
$password=$_POST['password'];
$cpassword=$_POST['cpassword'];
$qry="insert into register(name,dob,cnum,disable,proof,address,profile,username,password)values('$namesc','$dob','$contnum','$pdisable','$proof','$commadd','$profile','$username','$password');";
if(mysqli_query($con,$qry))
{ 
echo "<script>alert('Member detail has been added successfully');</script>";

}
}
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Old Age Home Management System || Home Page</title>
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
 <form class="forms-sample" method="post" enctype="multipart/form-data">
                    
                     <div class="form-group">
                       <label for="exampleInputUsername1">Name of person</label>
                      <input id="namesc" name="namesc" type="text" class="form-control" required="true" value="">
                    </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Date of Birth</label>
                     <input id="dob" name="dob" type="date" class="form-control" required="true" max="2023-01-01">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail1">Contact Number</label>
                     <input id="contnum" name="contnum" type="text" pattern="[0-9]+" maxlength="10" class="form-control" required="true" value="">
                    </div>
                        <div class="form-group">
                      <label for="exampleInputEmail1">Physically challenged</label>
                     <input name="phy" type="text"  class="form-control" required="true" value="">
                    </div>
                  
                    <div class="form-group">
                      <label for="exampleInputEmail1">Proof of Disability</label>
                     <input  name="proof" type="file" class="form-control" required="true" value="">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Communication Address</label>
                     <textarea class="form-control" id="commadd" name="commadd" rows="5"></textarea>
                     
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Profile Pic</label>
                     <input id="propic" name="propic" type="file" class="form-control" required="true" value="">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">UserName</label>
                    
                    <input  name="username" type="text"  class="form-control" required="true" value="">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Password</label>
                     <input  name="password"  type="password" class="form-control" required="true" value="">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Conformation Password</label>
                     <input  name="cpassword"  type="password" class="form-control" required="true" value="">
                    </div>
<input type="submit" value="submit" name="submit"/>
                  </form>
</body>
</html>
