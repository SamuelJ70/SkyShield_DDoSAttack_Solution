<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Animation - Electrify Responsive Multipurpose Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">
    <link rel="stylesheet" href="css/animate.css" type="text/css"/>

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--Start Header-->
<header id="header">
    <div id="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 top-info hidden-xs">
                    <!-- <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                    <span><i class="fa fa-envelope"></i>Email: mail@example.com</span> -->
                </div>
              
            </div>
        </div>
    </div>
    <div id="logo-bar">
        <div class="container">
            <div class="row">
                <!-- Logo / Mobile Menu -->
                <div  class="col-lg-3 col-sm-3 ">
                    <div id="logo">
                         <h1><a href="index.jsp"><img alt="logo" style="width: 1200px; height:100px;" src="images/1.png"/></a></h1>
                    </div>
                </div>
                <!-- Navigation
================================================== -->
                
            </div>
        </div>
    </div>
     <div id="top-bar" style="position:absolute; top: 170px; width:100%;"  >
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 top-info hidden-xs" >
                        
                    </div>
                   
                </div>
            </div>
        </div>
</header>
<!--End Header-->

<!--start wrapper-->
<section class="wrapper">
   
    <div class="container">
        <div class="row sub_content">
            
           
            <div class="col-lg-6 col-sm-6" style="position:absolute; top: 200px; left:25%; ">
                <div class="dividerHeading">
                    <h4><span>Register Form</span></h4>
                </div>
                <form id="registerform" method="post" name="registerform" action="<%=request.getContextPath()%>/NewUser">
                    <div class="form-group">
                        <input type="text" class="form-control"  name="uid" placeholder="User ID" required="required" >
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="uname" required="yes"	 placeholder="User name">
                    </div>
                    
                      <div class="form-group">
                        <select class="form-control" name="gender" required="yes">
                        <option value="male" selected="selected">Male</option>
                        <option value="female">Female</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" required="yes" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="repassword" onblur="return CheckPassword(document.loginform.repassword.value)" placeholder="Re-enter password">
                        
                    </div>
                    
                    <div class="form-group">
                        <input type="text" class="form-control" name="phone" required="yes" pattern="[0-9]{10}" placeholder="Phone">
                        
                    </div>
                     <div class="form-group">
                        <input type="text" class="form-control" name="city" required="yes" placeholder="City">
                        
                    </div>
                    
                    
                    
                    <div class="form-group">
                    
                    <button type="submit" name="submit" value="Register" class="btn btn-default btn-lg button">Register</button>
                        <button type="submit"  name="submit" value="Reset" class="btn btn-default btn-lg button">Reset</button>
                        
                        
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--end wrapper-->

<!--start footer-->

<!--end footer-->



<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.js"></script><!-- Popover-JS -->
<script type="text/javascript" src="js/jflickrfeed.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/swipe.js"></script>
<script type="text/javascript" src="js/jquery-scrolltofixed-min.js"></script>

<script src="js/main.js"></script>

<!-- Start Style Switcher -->

<!-- End Style Switcher -->
</body>
</html>