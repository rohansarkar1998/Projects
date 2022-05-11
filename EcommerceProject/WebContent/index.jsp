<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        
        <title>Electronics Shop</title>
        <link rel="shortcut icon" href="pic/hello_XwN_icon.ico">
        
        <link rel="stylesheet" href="bootstrap/bootstrap.css">  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>


            #img2 {
                /*margin-top:1px;*/
            }

            
            #nav {
                background-color: #c9302c;
            }
            #a1  {
                color:blanchedalmond;
                 margin-top: 20px;
            }
            #search{
                margin-left: 45px;
                margin-top: 30px;
                width: 395px;

            }
            #nav1 {background-color: indigo;}
            #fb,#twitt { font-size: 30px}
            #lab1 {
                font-size: 20px;
                font-family: Comic Sans MS;
                color: #fff;
                    margin-top: 15px;
                    
            }
            #lab2{
                
                margin-left: 500px;
                color: #fff;
                margin-top: 2px;
                
            }
            #nav2 {
                background-color: #262626
            }
        </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <nav class="nav navbar-default" id="nav">
            <div class="container">
                <div class="navbar-header">
                    <label><img src="pic/hello.jpg" class="img-circle" style="height:50px; width: 50px; margin-bottom: 10px;"></label>
                    <label class="active"><h2 style="color:blanchedalmond ;">E Shop</h2></label>
                    <label id="search">
                        <div class="input-group input-group-unstyled">
                            <input type="text" class="form-control" placeholder="Search Here">
    <span class="input-group-addon">
        <i class="glyphicon glyphicon-search"></i>
    </span>
</div>
                    </label>
                </div>
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="index.html" id="a1"><span class="glyphicon glyphicon-home"> Home</span></a></li>
                    <li><a href="myProduct.jsp"id="a1" ><span class="glyphicon glyphicon-briefcase"> Product</span></a></li>
                    <li><a href="about us 2.html"id="a1"><span class="glyphicon glyphicon-bell"> About Us</span></a></li>
                    <li><a href="login.jsp"id="a1"><span class="glyphicon glyphicon-user"> Login/Sign-Up</span></a></li>
                </ul>
            </div>
        </nav>
 <!--Image Slider Start-->
        <div class="container-fluid">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="pic/best deals.jpg" class="img-thumbnail" style="width: 100%" >
                    </div>

                    <div class="item">
                        <img src="pic/BEST DEAL 2.jpg" class="img-thumbnail" style="width: 100%" >
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--Image Slider End-->
        <br>

       <!--Image Slider Start for product-->
        <div class="container-fluid">
            <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel2" data-slide-to="1"></li>
                    <li data-target="#myCarousel2" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active" >
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <img src="index carasol/11.JPG" class="img-thumbnail" style="width: 50%" >
                                    <p><img src="index carasol/13.JPG"></p>
                                </div>
                                
                                <div class="col-md-3">
                                   <img src="index carasol/3.JPG" class="img-thumbnail" style="width: 50%" >
                                    <p><img src="index carasol/4.JPG"></p>
                                </div>
                                
                                <div class="col-md-3">
                                    <img src="index carasol/64 (1).JPG" class="img-thumbnail" style="width:250px" >
                                    <p><img src="index carasol/64 (2).JPG" style="width:250px"></p>
                                    <p><img src="index carasol/64 (3).JPG"></p>
                                </div>
                                <div class="col-md-3">
                                    <img src="index carasol/116.JPG" class="img-thumbnail" style="width:250px;height: 150px" >
                                    <p><img src="index carasol/117.JPG" style="width:250px"></p>
                                    <p><img src="index carasol/118.JPG"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item" >
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <img src="index carasol/119.JPG" class="img-thumbnail" style="width: 250px;height: 150px" >
                                    <p><img src="index carasol/120.JPG" style="width: 250px"></p>
                                    <p><img src="index carasol/121.JPG"></p>
                                </div>
                                
                                <div class="col-md-3">
                                    <img src="index carasol/68.JPG" class="img-thumbnail" style="width:250px;height: 150px" >
                                    <p><img src="index carasol/69.JPG" style="width:250px"></p>
                                    <p><img src="index carasol/121.JPG"></p>
                                </div>
                                
                                <div class="col-md-3">
                                    <img src="index carasol/74.JPG" class="img-thumbnail" style="width:250px;height:150px" >
                                    <p><img src="index carasol/75.JPG" style="width:250px"></p>
                                    <p><img src="index carasol/76.JPG" style="width:250px"></p>
                                </div>
                                <div class="col-md-3">
                                    <img src="index carasol/26.JPG" class="img-thumbnail" style="height: 230px" >
                                    <p><img src="index carasol/27.JPG" style="height:72px"></p>
                                    <p><img src="index carasol/118.JPG"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                     <div class="item" >
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <img src="index carasol/h1.PNG" class="img-thumbnail" style="width: 50%" >
                                    <p><img src="index carasol/h2.PNG"></p>
                                </div>
                                
                                <div class="col-md-3">
                                   <img src="index carasol/3.JPG" class="img-thumbnail" style="height: 251px" >
                                    <p><img src="index carasol/4.JPG" style="height:93px"></p>
                                </div>
                                
                                <div class="col-md-3">
                                    <img src="index carasol/80.JPG" class="img-thumbnail" style="width:250px;height:150px" >
                                    <p><img src="index carasol/81.JPG" style="width:250px"></p>
                                    <p><img src="index carasol/82.JPG"></p>
                                </div>
                                <div class="col-md-3">
                                    <img src="index carasol/i3.PNG" class="img-thumbnail" style="width: 50%" >
                                    <p><img src="index carasol/i4.PNG"></p>
                                    <p><img src="index carasol/118.JPG"></p>
                                </div>
                            </div>
                        </div>
                    </div>

                  

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel2" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--Image Slider End-->
        <div>
            <img src="pic/Capture.PNG" id="img3>">
        </div>
        
        <div>
            <nav class="nav navbar-default" id="nav1">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <label id="lab1">
                            Get Connected with US on Social Media
                        </label>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li> <a class="btn btn-block btn-social btn-facebook">
    <span class="fa fa-facebook" id="fb"></span> 
  </a></li>
                        <li> <a class="btn btn-block btn-social btn-twitter">
    <span class="fa fa-twitter white-text  " id="twitt"></span> 
  </a></li>
  <li> <a class="btn btn-block btn-social btn-instagram">
    <span class="fa fa-instagram" id="fb"></span> 
  </a></li>
  <li> <a class="btn btn-block btn-social btn-pinterest">
    <span class="fa fa-pinterest" id="fb"></span> 
  </a></li>
  <li> <a class="btn btn-block btn-social btn-snapchat">
    <span class="fa fa-snapchat" id="fb"></span> 
  </a></li>
                    </ul>
                    
                    
               
                </div>
            </nav>
      </div>
        
        <div style="background-color: #c0c0c0;">
            <nav class="nav navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <div class="row">
                            <div class="col-lg-12">
                                 <div class="col-lg-1"></div>
                                 
                                 
                                 <div class="col-lg-2"style="margin-left: 10px;">
                                     <h3 style="font-family: Comic Sans MS;font-weight:bolder">Company Name</h3>
                                     <p style="font-weight:bold">RK Electronics.The most trusted company in Eastern Kolkata</p>
                                 </div>
                                 <div class="col-lg-2" style="margin-left: 20px; text-align: center;font-weight:bolder">
                                     <h3 style="font-family: Comic Sans MS;font-weight:bolder"> Products</h3>
                                      <p style="font-weight:bold">Smart-phones</p>
                                     <p style="font-weight:bold">Laptops</p>
                                     <p style="font-weight:bold">Accessories</p>
                                 </div>
                                 <div class="col-lg-2" style="margin-left: 20px;font-weight:bolder">
                                     <h3 style="font-family: Comic Sans MS;font-weight:bolder">Useful Links</h3>
                                     <p style="font-weight:bold">Your account</p>
                                     <p style="font-weight:bold">Become an Affiliate</p>
                                     <p style="font-weight:bold">Shipping Rates</p>
                                     <p style="font-weight:bold">Help!</p>
                                 </div>
                                 <div class="col-lg-2" style="margin-left: 20px;font-weight:bolder">
                                     <h3 style="font-family: Comic Sans MS;font-weight:bolder">Contact US!</h3>
                                     <p ><span class="glyphicon glyphicon-home" style="font-weight:bold">  Ucchepota,Near Ruby Hospital, Kolkata-700 002,>West Bengal</span></p>
                                     <p><span class="glyphicon glyphicon-envelope" style="font-weight:bold"> 4uelectronics@gmail.com </span></p>
                                     <p><span class="glyphicon glyphicon-phone" style="font-weight:bold"> (033)7893 0223/234</span></p>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        
        
        
        
        <div>
            <nav class="nav navbar-default" id="nav2">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <label id="lab2">© 2017 Copyright: RKElectronics.com</label>
                    </div></div>

    </body>
</html>
