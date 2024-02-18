<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
  
   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.util.*" %>
<%@ page import="java.sql.*" %>
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
    
    
    
    <link rel="stylesheet" type="text/css" href="Style/css/vendor/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Style/css/style.css">
    <link rel="stylesheet" type="text/css" href="Style/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="Style/css/style-fraction.css" type="text/css" charset="utf-8" />
    <link rel="stylesheet" href="Style/css/fractionslider.css">

    <link rel="stylesheet" type="text/css" href="Style/css/switcher.css" media="screen" />
    <link rel="stylesheet" href="HomepageCss/css/styles.css" type="text/css" />
    <style>
    td{
        cursor:pointer;
        background: -moz-linear-gradient(top, #ffffff, #D1E3E9);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(#D1E3E9));
        text-align:center;
        width: 50px;
        height: 50px;
    }
    
    td img {
    max-width:100%;
    height:auto;
}
 
    td:hover{
        background: -moz-linear-gradient(top, #249ee4, #057cc0);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#249ee4), to(#057cc0));
    }
 
    td:active
    {
        background: -moz-linear-gradient(top, #057cc0, #249ee4);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#057cc0), to(#249ee4));
    }
 
    #result{
        font-weight:bold;
        font-size:16pt;
    }
    
    #myTable{
        width:100%; height:auto;

}

img {
  width: 100%;
  display: block;
}

    
</style>



<script  src="http://code.jquery.com/jquery-1.9.1.min.js" ></script>     

<link href="<%=request.getContextPath() %>/tablecss/CSS/style.css" rel="stylesheet" type="text/css" />

<script class="jsbin"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>

    
    <%
	
	//ResultSet rs=(ResultSet)request.getAttribute("rs");
	//System.out.println("rs.getstring>>>>>>>>>>>>>"+rs);
	int no=Utility.parse(request.getParameter("no"));
	int id=0;
	String userid="",name="",add="",email="",phone="",city="",gender="";
	String uid=(String)session.getAttribute("uid").toString();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_web_skyshield", "root", "admin");
	
	
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from m_user whre where u_user='"+uid+"'");
	
	
	
	//if(no==0)
	while(rs.next())
	{
		
		userid=rs.getString(2);
		System.out.println("rs.getstring>>>>>>>>>>>>>"+userid);
		name=rs.getString(4);
		/* gender=rs.getString(5); */
		email=rs.getString(7);
	/* 	phone=rs.getString(7); */
		city=rs.getString(5);
	}
%>
<%-- 
<%
String uid=session.getAttribute("uid").toString(); 
%> --%>
</head>
<body>

<!--Start Header-->
<header id="header">
        <div id="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 top-info hidden-xs">
                      <!--   <span><i class="fa fa-phone"></i>Phone: +(91)-80-33055788</span>
                        <span><i class="fa fa-envelope"></i>Email: info@dhsinformatics.com</span> -->
                    </div>
                   
                </div>
            </div>
        </div>
        
        
        
        <div id="logo-bar">            
            <div class="container">
                <div class="row">
                  
                    <div  class="col-lg-3 col-sm-3 " style="position:absolute; top: 5px;height:100px;">
                        <div id="logo">
                            <h1><a href=""><img alt="logo" style="width: 1024px;height:100px;" src="images/1.png"/></a></h1>
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                     <div id="top-bar" style="position:absolute; top: 150px; width:100%;"  >
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 top-info hidden-xs" >
                        
                    </div>
                   
                </div>
            </div>
        </div>
        
        
        
        
        
        
        <div id="logo-bar">
            <div class="container">
                <div class="row">
                   
                    <div  class="col-lg-3 col-sm-3 ">
                        <div id="logo">
                           
                        </div>
                    </div>
                    <!-- Navigation
    ================================================== -->
                    <div class="col-lg-9 col-sm-9" style="position:absolute; top: 150px;">
                          <div class="navbar navbar-default navbar-static-top" role="navigation">
                            <!--  <div class="container">-->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="<%=request.getContextPath() %>/UserHome">Home</a>
                                      
                                    </li>

                                    <li><a href="#">Show Profile</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<%=request.getContextPath() %>/UserProfile">View Profile</a></li>
                                             <li><a href="<%=request.getContextPath() %>/EditUserProfile?submit=edit">Edit Profile</a></li>
                                           
                                        </ul>
                                    </li>
                                    
                                     <li><a href="#">Upload</a>
                                        <ul class="dropdown-menu">
                                             <li> <a href="<%=request.getContextPath() %>/UploadFile?submit=get">Upload File</a></li>
                                             <li> <a href="<%=request.getContextPath() %>/UploadFile?submit=view">View Files</a></li>
                                           
                                        </ul>
                                    </li>
                                    
                                    
                                    
                                    
                                    
                                    
                                     <%--  <li> <a href="<%=request.getContextPath() %>/CalculateBMI?submit=get">Calculate BMI</a></li> --%>

                                    <li> <a href="<%=request.getContextPath() %>/ChangePass?submit=pass">Change Password</a>
                                       
                                    </li>

                                    <li><a href="<%=request.getContextPath() %>/index.jsp">LogOut</a>
                                        
                                            </li>
                                           

                                       
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
<!--End Header-->

<!--start wrapper-->
<section class="wrapper">
    <section class="page_head">
        <div class="container">
          
        </div>
    </section>
    <div class="container">
    
    
    
     <div class="row sub_content">
            
           <div class="col-lg-6 col-sm-6" style="position:absolute; top: 300px;left: 300px;">
           <div class="project_details">
							<div class="widget_title">
								<h4><span>User Details</span></h4>
							</div>
							<ul class="details">
								
								<li><span>User Id: </span><%=userid %></li>
								<li><span>Name :</span><%=name %></li>
							<%-- 	<li><span>Gender :</span><%=gender %></li> --%>
								<li><span>Mail Id:</span> <%=email%></li>
								<%-- <li><span>Cell No:</span> <%=phone %></li> --%>
								<li><span>City:</span> <%=city%></li>
							</ul>
						</div>
           
           </div> 
           
            
             
            </div>
            
            
        
            </div>
            </section>
  
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

<%if(Utility.parse(request.getParameter("no"))==1)
    {%>
	<script type="text/javascript">
	alert('Profile updated successfully !!!!!')
	
	</script>
	
 <%   }%>
 
 <%if(Utility.parse(request.getParameter("no"))==2)
    {%>
	<script type="text/javascript">
	alert('Profile updation Failure !!!!!')
	
	</script>
	
 <%   }%>
</body>
</html>