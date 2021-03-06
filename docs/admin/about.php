<?php session_start();  ob_start();
    if (!isset($_SESSION['admin'])) {
    header('location:index.html');
    echo "Must redirect";
    exit(); // <-- terminates the current script
  }
// close the php tag and write your HTML :)
?>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>About us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <p>LIBRARY</p>
                </div>
            </div>
            <div class="main-menu">
              <div class="menu-inner">
                <nav>
                    <ul class="metismenu" id="menu">
                      <li><a href="main.php"><i class="fa fa-file"></i> <span>Essentials</span></a></li>


                      <li>
                          <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-user"></i><span>Students</span></a>
                          <ul class="collapse">
                              <li><a href="student-signup.php">Signup</a></li>
                              <li><a href="student-change-details.php">Change details</a></li>
                              <li><a href="search-students.php">Search</a></li>
                          </ul>
                      </li>

                      <li>
                          <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-book"></i><span>Books</span></a>
                          <ul class="collapse">
                              <li><a href="book-entry.php">New entry</a></li>
                              <li><a href="modify-book-entry.php">Change details</a></li>
                              <li><a href="search-books.php">Search</a></li>

                          </ul>
                      </li>
                      <li><a href="fines.php"><i class="fa fa-university"></i> <span>Fines</span></a></li>
                      <li><a href="superuser.php"><i class="fa fa-user-plus"></i> <span>Super User</span></a></li>
                      <li><a href="faq.php"><i class="fa fa-question"></i> <span>FAQs</span></a></li>
                      <li class="active"><a href="about.php"><i class="fa fa-users"></i> <span>About Us</span></a></li>
                      <li><a href="about.php#team"><i class="fa fa-github"></i> <span>Developers</span></a></li>

                    </ul>
                </nav>
              </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->

            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">

                    <div class="col-sm-6">

                        <div class="breadcrumbs-area clearfix">
                          <div class="nav-btn pull-left">
                              <span></span>
                              <span></span>
                              <span></span>
                          </div>
                            <h4 class="page-title pull-left">CEG Hostel Library</h4>
                        </div>
                    </div>

                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">User <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="logout.php">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->




            <div class="main-content-inner">
                <div class="row">
                    <!-- nav tab start -->

                    <!-- nav tab end -->
                    <!-- anchor tab start -->

                    <!-- anchor tab end -->
                    <!-- tab start -->

                    <!-- tab end -->
                    <!-- left align tab start -->
                    <div class="col-lg-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex">
                                    <div class="nav flex-column nav-pills mr-4 mb-3 mb-sm-0" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">About</a>
                                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Why</a>
                                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">How</a>

                                    </div>
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            <p>Gaining knowledge is the first step to wisdom but sharing is the first step to humanity. The endearing shrine for gaining and sharing knowledege is nothing but the little world called library. Here is our library exclusive for our CEG hostellers to their needed books.</p>
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            <p>College of Engineering Guindy is the place for gaining knowledge and sharing wisdom. CEG created many students who excelled in their respective domains. The best way to enrich their knowlegde through books is the library. So here is the initiative made by the students for the future generation - CEG Hostels Library.</p>
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                            <p>This initiative for the first time, is introduced exclusively for the hostellers. The students staying in hostels can easily access the required books to develop their academics by using this library. This library has the collection of books for various branches of Engineering. The site has been created with student welfare as it's foremost priority.</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-5 col-md-12 mt-5">
                      <div class="card">
                          <div class="card-body">
                              <div class="d-sm-flex flex-wrap justify-content-between mb-4 align-items-center">
                                  <h4 class="header-title mb-0">Guided by</h4>

                              </div>
                              <div class="member-box">
                                <div class="s-member">
                                    <div class="media align-items-center">
                                        <div class="media-body ml-5">
                                            <p>Dr. T. V. Geetha</p><span>Warden, CEG Hostels</span>
                                        </div>
                                        <div class="tm-social">

                                        </div>
                                    </div>
                                </div>
                                  <div class="s-member">
                                      <div class="media align-items-center">
                                          <div class="media-body ml-5">
                                              <p>Dr. P. Hariharan</p><span>Executive Warden, CEG Hostels</span>
                                          </div>
                                          <div class="tm-social">

                                          </div>
                                      </div>
                                  </div>
                                  <div class="s-member">
                                      <div class="media align-items-center">
                                          <div class="media-body ml-5">
                                              <p>Dr. M. Pradeep Kumar</p><span>Deputy Warden, CEG Hostels</span>
                                          </div>
                                          <div class="tm-social">

                                          </div>
                                      </div>
                                  </div>



                              </div>
                          </div>
                      </div>
                      <div class="card">
                          <div class="card-body">
                            <div class="d-sm-flex flex-wrap justify-content-between mb-4 align-items-center">
                                <h4 class="header-title mb-0">A message from the team</h4>

                            </div>
                              <div class="d-md-flex">
                                <p>We as a team are indeed previleged to work on this CEG Hostel Library web app. It brought us experience in the main domains we will be required to work with in the upcoming years. This project would not have been possible with each member playing a vital role wihtout whom this project would not have been possible considering the very short deadline we had.</p>
                              </div>

                              <div class="d-md-flex">
                                <p>This site was done in two weeks with the developers,being third year B.E. students from the Department of Computer Science getting this project the most time they could afford.</p>
                              </div>
                              </div>
                          </div>

                      </div>

                    <div class="col-xl-6 col-lg-5 col-md-12 mt-5" id="team">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex flex-wrap justify-content-between mb-4 align-items-center">
                                    <h4 class="header-title mb-0">Team Members</h4>

                                </div>
                                <div class="member-box">
                                  <div class="s-member">
                                      <div class="media align-items-center">
                                          <div class="media-body ml-5">
                                              <p>Mr. G. Manikandan</p><span>Department of Computer Science</span><span>Mentor</span>
                                          </div>
                                          <div class="tm-social">

                                          </div>
                                      </div>
                                  </div>
                                    <div class="s-member">
                                        <div class="media align-items-center">
                                            <div class="media-body ml-5">
                                                <p>S. Ben Stewart</p><span>Lead Developer</span>
                                            </div>
                                            <div class="tm-social">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="s-member">
                                        <div class="media align-items-center">
                                            <div class="media-body ml-5">
                                                <p>Sivakailash</p><span>UI/UX designer</span>
                                            </div>
                                            <div class="tm-social">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="s-member">
                                        <div class="media align-items-center">
                                            <div class="media-body ml-5">
                                                <p>Santhosh</p><span>Lead Tester</span>
                                            </div>
                                            <div class="tm-social">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="s-member">
                                        <div class="media align-items-center">
                                            <div class="media-body ml-5">
                                                <p>Dhanush</p><span>Management Head</span>
                                            </div>
                                            <div class="tm-social">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="s-member">
                                        <div class="media align-items-center">
                                            <div class="media-body ml-5">
                                                <p>Varadharajan</p><span>Initiator</span>
                                            </div>
                                            <div class="tm-social">

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>


                    </div>


                    <!-- left align tab end -->
                </div>
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
        <footer>
            <div class="footer-area">
                <p>Made with <i class="fa fa-rocket"></i> in <a href="http://sbenstewart.in">Chennai</a>.</p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
    <!-- offset area start -->

    <!-- offset area end -->
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>
