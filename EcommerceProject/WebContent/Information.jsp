<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-90680653-2"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-90680653-2');
    </script>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Twitter -->
    <!-- <meta name="twitter:site" content="@bootstrapdash">
    <meta name="twitter:creator" content="@bootstrapdash">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Azia">
    <meta name="twitter:description" content="Responsive Bootstrap 4 Dashboard Template">
    <meta name="twitter:image" content="https://www.bootstrapdash.com/azia/img/azia-social.png"> -->

    <!-- Facebook -->
    <!-- <meta property="og:url" content="https://www.bootstrapdash.com/azia">
    <meta property="og:title" content="Azia">
    <meta property="og:description" content="Responsive Bootstrap 4 Dashboard Template">

    <meta property="og:image" content="https://www.bootstrapdash.com/azia/img/azia-social.png">
    <meta property="og:image:secure_url" content="https://www.bootstrapdash.com/azia/img/azia-social.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="600"> -->

    <!-- Meta -->
    <meta name="description" content="Responsive Bootstrap 4 Dashboard Template">
    <meta name="author" content="BootstrapDash">

    <title>Azia Responsive Bootstrap 4 Dashboard Template</title>

    <!-- vendor css -->
    <link href="../lib/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="../lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="../lib/typicons.font/typicons.css" rel="stylesheet">

    <!-- azia CSS -->
    <link rel="stylesheet" href="../css/azia.css">

  </head>
  <body>

    <div class="az-header">
      <div class="container">
        <div class="az-header-left">
          <a href="index.html" class="az-logo"><span></span> azia</a>
          <a href="" id="azMenuShow" class="az-header-menu-icon d-lg-none"><span></span></a>
        </div><!-- az-header-left -->
        <div class="az-header-menu">
          <div class="az-header-menu-header">
            <a href="index.html" class="az-logo"><span></span> azia</a>
            <a href="" class="close">&times;</a>
          </div><!-- az-header-menu-header -->
          <ul class="nav">
            <li class="nav-item">
              <a href="AdminHome.jsp" class="nav-link"><i class="typcn typcn-chart-area-outline"></i> Dashboard</a>
            </li>
            <li class="nav-item">
              
                
                <a href="page-signup.jsp" class="nav-link">add admin</a>
             
            </li>
            
            
          
        </div><!-- az-header-menu -->
        <div class="az-header-right">
          
          <a href="" class="az-header-search-link"><i class="fas fa-search"></i></a>
          <div class="az-header-message">
            <a href="#"><i class="typcn typcn-messages"></i></a>
          </div><!-- az-header-message -->
          <div class="dropdown az-header-notification">
            <a href="" class="new"><i class="typcn typcn-bell"></i></a>
            <div class="dropdown-menu">
              <div class="az-dropdown-header mg-b-20 d-sm-none">
                <a href="" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
              </div>
              <h6 class="az-notification-title">Notifications</h6>
              <p class="az-notification-text">You have 2 unread notification</p>
              <div class="az-notification-list">
                <div class="media new">
                  <div class="az-img-user"><img src="../img/faces/face2.jpg" alt=""></div>
                  <div class="media-body">
                    <p>Congratulate <strong>Socrates Itumay</strong> for work anniversaries</p>
                    <span>Mar 15 12:32pm</span>
                  </div><!-- media-body -->
                </div><!-- media -->
                <div class="media new">
                  <div class="az-img-user online"><img src="../img/faces/face3.jpg" alt=""></div>
                  <div class="media-body">
                    <p><strong>Joyce Chua</strong> just created a new blog post</p>
                    <span>Mar 13 04:16am</span>
                  </div><!-- media-body -->
                </div><!-- media -->
                <div class="media">
                  <div class="az-img-user"><img src="../img/faces/face4.jpg" alt=""></div>
                  <div class="media-body">
                    <p><strong>Althea Cabardo</strong> just created a new blog post</p>
                    <span>Mar 13 02:56am</span>
                  </div><!-- media-body -->
                </div><!-- media -->
                <div class="media">
                  <div class="az-img-user"><img src="../img/faces/face5.jpg" alt=""></div>
                  <div class="media-body">
                    <p><strong>Adrian Monino</strong> added new comment on your photo</p>
                    <span>Mar 12 10:40pm</span>
                  </div><!-- media-body -->
                </div><!-- media -->
              </div><!-- az-notification-list -->
              <div class="dropdown-footer"><a href="">View All Notifications</a></div>
            </div><!-- dropdown-menu -->
          </div><!-- az-header-notification -->
          <div class="dropdown az-profile-menu">
            <a href="" class="az-img-user"><img src="../img/faces/face1.jpg" alt=""></a>
            <div class="dropdown-menu">
              <div class="az-dropdown-header d-sm-none">
                <a href="" class="az-header-arrow"><i class="icon ion-md-arrow-back"></i></a>
              </div>
              <div class="az-header-profile">
                <div class="az-img-user">
                  <img src="../img/faces/face1.jpg" alt="">
                </div><!-- az-img-user -->
                <h6>Rishav Ganguly</h6>
                <span>Admin</span>
              </div><!-- az-header-profile -->

              <a href="" class="dropdown-item"><i class="typcn typcn-user-outline"></i> My Profile</a>
              <a href="" class="dropdown-item"><i class="typcn typcn-edit"></i> Edit Profile</a>
              <a href="" class="dropdown-item"><i class="typcn typcn-time"></i> Activity Logs</a>
              <a href="" class="dropdown-item"><i class="typcn typcn-cog-outline"></i> Account Settings</a>
              <a href="page-signin.html" class="dropdown-item"><i class="typcn typcn-power-outline"></i> Sign Out</a>
            </div><!-- dropdown-menu -->
          </div>
        </div><!-- az-header-right -->
      </div><!-- container -->
    </div><!-- az-header -->
	<f:view>
	<h:form>
	
	
	
	
    <div class="az-content pd-y-20 pd-lg-y-30 pd-xl-y-40">
      <div class="container">
        <div class="az-content-left az-content-left-components">
          <div class="component-item">
            <label>Details</label>
            <nav class="nav flex-column">
              <h:commandButton value="Transaction" action="#{customerBean.showTransaction }"></h:commandButton>
            </nav>

            

            <label>Admin List</label>
            <h:commandButton value="Admin" action="#{customerBean.showAdmin }"></h:commandButton>

            <label>Tables</label>
            <nav class="nav flex-column">
              <a href="table-basic.html" class="nav-link">Employee Salaries</a>
            </nav>
          </div><!-- component-item -->

        </div><!-- az-content-left -->
        <div class="az-content-body pd-lg-l-40 d-flex flex-column">
          <div class="az-content-breadcrumb">
            <span>Components</span>
            <span>Charts</span>
            <span>ChartJS Charts</span>
          </div>
          <h2 class="az-content-title">Informatics</h2>

          <div class="az-content-label mg-b-5">Revenues</div>
          <p class="mg-b-20">for the 1st Half of FY20.</p>

          <div class="row row-sm">
            <div class="col-sm-8 col-md-6 col-xl-4">
              <div class="az-content-label az-content-label-sm mg-b-15"></div>
              <div class="ht-200 ht-lg-250"><canvas id="chartBar1"></canvas></div>
            </div><!-- col-6 -->
            <div class="col-sm-8 col-md-6 col-xl-4 mg-t-20 mg-md-t-0">
              <div class="az-content-label az-content-label-sm mg-b-15"></div>
              <div class="ht-200 ht-lg-250"><canvas id="chartBar2"></canvas></div>
            </div><!-- col-6 -->
            <div class="col-sm-8 col-md-6 col-xl-4 mg-t-20 mg-xl-t-0">
              <div class="az-content-label az-content-label-sm mg-b-15"></div>
              <div class="ht-200 ht-lg-250"><canvas id="chartBar3"></canvas></div>
            </div><!-- col-6 -->
          </div><!-- row -->

          <hr class="mg-y-30">

          <div class="az-content-label mg-b-5">Revenue Breakdown</div>
          <p class="mg-b-20">for the 1st Half of FY20..</p>

          <div class="row row-sm">
            <div class="col-sm-8 col-md-6">
              <div class="chartjs-wrapper-demo"><canvas id="chartBar4"></canvas></div>
            </div><!-- col-6 -->
            <div class="col-sm-8 col-md-6 mg-t-20 mg-md-t-0">
              <div class="chartjs-wrapper-demo"><canvas id="chartBar5"></canvas></div>
            </div><!-- col-6 -->
          </div><!-- row -->

          <hr class="mg-y-30">

          <div class="az-content-label mg-b-5">Cost Breakdown</div>
          <p class="mg-b-20">For the 1st Half of FY20..</p>

          <div class="row row-sm">
            <div class="col-sm-8 col-md-6">
              <div class="chartjs-wrapper-demo"><canvas id="chartStacked1"></canvas></div>
            </div><!-- col-6 -->
            <div class="col-sm-8 col-md-6 mg-t-20 mg-md-t-0">
              <div class="chartjs-wrapper-demo"><canvas id="chartStacked2"></canvas></div>
            </div><!-- col-6 -->
          </div><!-- row -->

          <hr class="mg-y-30">

          <div class="row row-sm">
            <div class="col-sm-8 col-md-6">
              <div class="az-content-label mg-b-5">Income Statement</div>
              <p class="mg-b-20">For the 1st Half of FY20..</p>
              <div class="chartjs-wrapper-demo"><canvas id="chartLine1"></canvas></div>
            </div><!-- col-6 -->
            <div class="col-sm-8 col-md-6 mg-t-20 mg-md-t-0">
              <div class="az-content-label mg-b-5">Area Chart</div>
              <p class="mg-b-20">Below is the basic area chart example.</p>
              <div class="chartjs-wrapper-demo"><canvas id="chartArea1"></canvas></div>
            </div><!-- col-6 -->
          </div><!-- row -->

          <hr class="mg-y-30">

          <div class="az-content-label mg-b-5">Revenue Distribution</div>
          <p class="mg-b-20">For the 1st Half of FY20..</p>

          <div class="d-md-flex">
            <div class="chartjs-wrapper-demo mg-b-20 mg-md-b-0 mg-md-r-30 mg-xl-r-40"><canvas id="chartPie"></canvas></div>
            <div class="chartjs-wrapper-demo"><canvas id="chartDonut"></canvas></div>
          </div>

          <div class="ht-40"></div>

          <div class="az-footer mg-t-auto">
            <div class="container">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © rk4uelectronics.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank"></span>
            </div><!-- container -->
          </div><!-- az-footer -->
        </div><!-- az-content-body -->
      </div><!-- container -->
    </div><!-- az-content -->
    </h:form>
</f:view>

    <script src="../lib/jquery/jquery.min.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/ionicons/ionicons.js"></script>
    <script src="../lib/chart.js/Chart.bundle.min.js"></script>


    <script src="../js/azia.js"></script>
    <script src="../js/chart.chartjs.js"></script>
    <script src="../js/jquery.cookie.js" type="text/javascript"></script>
  </body>
</html>
