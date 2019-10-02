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
    <title>Students</title>
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


                        <li class="active">
                            <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-user"></i><span>Students</span></a>
                            <ul class="collapse">
                                <li><a href="student-signup.php">Signup</a></li>
                                <li><a href="student-change-details.php">Change details</a></li>
                                <li class="active"><a href="search-students.php">Search</a></li>
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
                        <li><a href="about.php"><i class="fa fa-users"></i> <span>About Us</span></a></li>
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
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Admin <i class="fa fa-angle-down"></i></h4>
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

                  <div class="col-12 mt-5">
                      <div class="card">
                          <div class="card-body">
                              <h4 class="header-title">Search borrowed books details</h4>

                                  <div class="form-group">
                                      <label for="roll">Student roll number</label>
                                      <input type="text" class="form-control" id="roll" aria-describedby="emailHelp" placeholder="Enter student roll number">
                                  </div>

                                  <div class="form-group">
                                      <label for="roll">Student name</label>
                                      <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter student name">
                                  </div>




                                  <button type="button" class="btn btn-primary mt-4 pr-4 pl-4" onclick="searchStudent()">Search</button>

                          </div>
                      </div>
                  </div>
                    <!-- table primary start -->

                    <div class="col-lg-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Issued Books</h4>
                                <div class="single-table">
                                    <div class="table-responsive">
                                        <table class="table text-center">
                                            <thead class="text-uppercase bg-primary">
                                                <tr class="text-white">
                                                    <th scope="col">S. No</th>
                                                    <th scope="col">Book ID</th>
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Due Date</th>
                                                    <th scope="col">Fine (INR)</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tablebody"></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Search student details</h4>

                                    <div class="form-group">
                                        <label for="roll1">Student roll number</label>
                                        <input type="text" class="form-control" id="roll1" aria-describedby="emailHelp" placeholder="Enter student roll number">
                                    </div>

                                    <div class="form-group">
                                        <label for="roll1">Student name</label>
                                        <input type="text" class="form-control" id="name1" aria-describedby="emailHelp" placeholder="Enter student name">
                                    </div>




                                    <button type="button" class="btn btn-primary mt-4 pr-4 pl-4" onclick="searchStudentDetails()">Details</button>

                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Student Details</h4>
                                <div class="single-table">
                                    <div class="table-responsive">
                                        <table class="table text-center">
                                            <thead class="text-uppercase bg-primary">
                                                <tr class="text-white">
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Phone</th>
                                                    <th scope="col">Dept</th>
                                                    <th scope="col">Course</th>
                                                    <th scope="col">Year</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tablebody1"></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

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
    <script type='text/javascript' src='assets/js/main.js'></script>

    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>
