<?php session_start();
//error_reporting(0);
include_once('includes/config.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{
if(isset($_POST['submit']))
if(isset($_POST['submit']))
{
$namesc=$_POST['namesc'];
$dob=$_POST['dob'];
$gender=$_POST['gen'];
$contnum=$_POST['contnum'];
$pdisable=$_POST['phy'];

$commadd=$_POST['commadd'];

$username=$_POST['username'];
$password=$_POST['password'];
$cpassword=$_POST['cpassword'];
$qry="insert into register(name,dob,gender,cnum,disable,address,username,password)values('$namesc','$dob','$gender','$contnum','$pdisable','$commadd','$username','$password')";
if(mysqli_query($con,$qry))
{ 
echo "<script>alert('Member detail has been added successfully');</script>";

}
}

}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Old Age Home Management System || Add Senior Details</title>
  <!-- base:css -->
  <link rel="stylesheet" href="vendors/typicons/typicons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="vendors/select2/select2.min.css">
  <link rel="stylesheet" href="vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <!-- endinject -->
  
  <script src="http://js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->

    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
          <a class="navbar-brand brand-logo" href="index.html"><img src="images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </div>
      <?php include_once('includes/header.php');?>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
     
    <?php include_once('includes/sidebar.php');?>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
  
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Member Citizen</h4>
                  <p class="card-description">
                    Add Member Detail!!!
                  </p>
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
                      <label for="exampleInputEmail1">Gender</label>
                      <input type="radio" name="gen" value="Male"/>Male
                         <input type="radio" name="gen"  value="Female"/>Female 
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
                     <input  name="proof" type="file" class="form-control" required="true" value="image/pic">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Communication Address</label>
                     <textarea class="form-control" id="commadd" name="commadd" rows="5"></textarea>
                     
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Profile Pic</label>
                     <input id="propic" name="propic" type="file" class="form-control" required="true" value="image/pic">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Mail_id</label>
                    
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
                </div>
              </div>
            </div>
     
          </div>
        </div>
        <!-- content-wrapper ends -->
       <?php include_once('includes/footer.php');?>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="vendors/select2/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="js/file-upload.js"></script>
  <script src="js/typeahead.js"></script>
  <script src="js/select2.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
