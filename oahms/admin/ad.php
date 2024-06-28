<?php session_start();
error_reporting(0);
include_once('admin/includes/config.php');

if(isset($_POST['submit']))
{
$namesc=$_POST['namesc'];
$dob=$_POST['dob'];
$contnum=$_POST['contnum'];
$commadd=$_POST['commadd'];
$emeradd=$_POST['emeradd'];
$emercontnum=$_POST['emercontnum'];
$id=intval($_GET['id']);
$sql=mysqli_query($con,"update tblseniorcitizen set Name='$namesc',DateofBirth='$dob', ContactNumber='$contnum',CommunicationAddress='$commadd',EmergencyAddress='$emeradd',EmergencyContactnumber='$emercontnum' where ID='$id'");
echo "<script>alert('Senior citizen detail has been updated successfully');</script>";
echo "<script>window.location.href='manage-scdetails.php'</script>";

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <title>Old Age Home Management System || Update Services</title>
  <!-- base:css -->
  <link rel="stylesheet" href="admin/vendors/typicons/typicons.css">
  <link rel="stylesheet" href="admin/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="admin/vendors/select2/select2.min.css">
  <link rel="stylesheet" href="admin/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="admin/css/vertical-layout-light/style.css">
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
          <a class="navbar-brand brand-logo" href="admin/index.html"><img src="admin/images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="admin/index.html"><img src="admin/images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </div>
   <?php include_once('admin/includes/header.php');?> 
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
     
  
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
  
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Update Senior Citizen Details</h4>
                  <p class="card-description">
                    Update Senior Citizen Details of old age home!!!
                  </p>
                  <form class="forms-sample" method="post">
                    <?php
                    $id=intval($_GET['id']);
                         $query=mysqli_query($con,"select * from tblseniorcitizen where tblseniorcitizen.ID='$id'");

while($row=mysqli_fetch_array($query))
{
?>
                    <div class="form-group">
                       <label for="exampleInputUsername1">Name of Senior Citizen</label>
                      <input id="namesc" name="namesc" type="text" class="form-control" required="true" value="<?php echo htmlentities($row['Name']);?>">
                    </div>
                  <div class="form-group">
                      <label for="exampleInputEmail1">Date of Birth</label>
                     <input id="dob" name="dob" type="date" class="form-control" required="true" value="<?php echo htmlentities($row['DateofBirth']);?>">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail1">Contact Number</label>
                     <input id="contnum" name="contnum" type="text" pattern="[0-9]+" maxlength="10" class="form-control" required="true" value="<?php echo htmlentities($row['ContactNumber']);?>">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Communication Address</label>
                     <textarea class="form-control" id="commadd" name="commadd" rows="5"><?php echo htmlentities($row['CommunicationAddress']);?></textarea>
                     
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Profile Pic</label>
                     
                      <img src="images/<?php echo htmlentities($row['ProfilePic']);?>" width="250">
    <a href="admin/change-image.php?id=<?php echo $row['ID'];?>">Change Image</a>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Emergency Address</label>
                    
                     <textarea class="form-control" id="emeradd" name="emeradd" rows="5"><?php echo htmlentities($row['EmergencyAddress']);?></textarea>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Emergency Contact Number</label>
                     <input id="emercontnum" name="emercontnum" pattern="[0-9]+" maxlength="10" type="text" class="form-control" required="true" value="<?php echo htmlentities($row['EmergencyContactnumber']);?>">
                    </div>
                    <?php } ?>
                    <button type="submit" class="btn btn-primary mr-2" name="submit">Submit</button>
                  </form>
                </div>
              </div>
            </div>
     
          </div>
        </div>
        <!-- content-wrapper ends -->
       <?php include_once('admin/includes/footer.php');?>
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="admin/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="admin/js/off-canvas.js"></script>
  <script src="admin/js/hoverable-collapse.js"></script>
  <script src="admin/js/template.js"></script>
  <script src="admin/js/settings.js"></script>
  <script src="admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="admin/vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="admin/vendors/select2/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="admin/js/file-upload.js"></script>
  <script src="admin/js/typeahead.js"></script>
  <script src="admin/js/select2.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
