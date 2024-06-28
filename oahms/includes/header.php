<!--header-->
  <div class="strip"> </div>
  <div class="header-top" id="home">
    <div class="container">
      <div class="head-section">
        <div class="logo-content">
          <!--top-logo-->
          
              <div class="logo">
                  <a href="index.php"><img src="images/logo.png"  alt="" width="180" height="100" /></a>
                  <h4 style="color: orange;">Hope Foundation Management System</h4>
              </div>
              <div class="top-log">
                <ul>
                  <li><a href="admin/login.php">Admin</a></li>
                  <li><a href="contact.php">Contact</a></li>
                 <li><a href="eligibility.php">Eligibility</a></li>
                <li><a href="rules.php"> Rules </a></li>
                 <li><a href="search.php"> Search </a></li>
                </ul>
                  <div class="clearfix"> </div> 
              </div>  
              <div class="clearfix"> </div> 
          </div>
          <div class="social-content">
              <div class="top-icons">
                <ul>
                  <li><a class="fb" href="#"><span> </span></a></li>
                  <li><a class="gp" href="#"><span> </span></a></li>
                  <li><a class="tw" href="#"><span> </span></a></li>
                  <li><a class="you" href="#"><span> </span></a></li>
                  <div class="clearfix"> </div>
                </ul>
              </div>
            </div>
          </div>
            <div class="clearfix"></div>
      </div>
        <div class="clearfix"></div>
    <div class="sub-header">
    <!--start-top-nav-->
             <nav class="top-nav">
              <ul class="top-nav">
                <li class="active"><a href="index.php">Home</a></li>
                <li><a href="about.php">  About </a></li>
                <li><a href="services.php">Advice & Support</a></li>
                <li><a href="eligibility.php">Get involved</a></li>
                <li><a href="../shopping/store.php"> Our Shop </a></li>
                <li><a href="service.php"> Donate Now</a></li>
                <li><a href="contact.php">Contact</a></li>
                  <div class="clearfix"> </div>

              </ul>
              <a href="#" id="pull"><h6>MENU</h6><img src="images/menu-icon.png" title="menu" /></a>

            </nav>
            <!--start-top-nav-script-->
          <script>
            $(function() {
              var pull    = $('#pull');
                menu    = $('nav ul');
                menuHeight  = menu.height();
              $(pull).on('click', function(e) {
                e.preventDefault();
                menu.slideToggle();
              });
              $(window).resize(function(){
                    var w = $(window).width();
                    if(w > 320 && menu.is(':hidden')) {
                      menu.removeAttr('style');
                    }
                });
            });
          </script>
  <!--//End-top-nav-script-->

      <!-- script-for-menu -->
        <script>
          $(document).ready(function(){
            $("span.menu").click(function(){
              $(".top-nav ul").slideToggle(200);
            });
          });
        </script>
      <div class="clearfix"> </div>
    </div>
    <!--/header-->