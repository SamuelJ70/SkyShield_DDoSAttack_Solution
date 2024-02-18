<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="com.util.*" %>
  
<html>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>WPAP</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="css1/bootstrap-responsive.css" rel="stylesheet">
	<link href="css1/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">

<script type = "text/javascript" >
function changeHashOnLoad() 
{
 window.location.href += "#";
 setTimeout("changeHashAgain()", "50"); 
}

function changeHashAgain() 
{
 window.location.href += "1";
}

var storedHash = window.location.hash;
window.setInterval(function () 
{
	if (window.location.hash != storedHash)
    {
     	window.location.hash = storedHash;
	}
}, 50);


function check()
{
	if(document.f1.code.value.length!=5)
	{
		alert("Only 5 Characters Of Captcha is Allowed!");
		return false;
	}
}

 </script>

<script type="text/javascript">
    
  function checkvariability()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="none";
    	
    	
    }
   
   
    </script>

    <script type="text/javascript">
    
    function checkvariability1()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="block";
    	
    	
    }
   
    </script>


    
    
    <script type="text/javascript">
    
    function checkvariability2()
    {
    	document.getElementById("contact").style.display="block";
    	document.getElementById("services").style.display="none";
      	
    	
    	
    }
    
    </script>
    
    <style>
    #contact, #services{
   margin-top:-55%;
    display:none;
   
    }
    
    
    li .btn{
    margin-right:2px;
    border-radius:15px;
    }
    #services{
background-image:url('images/admin-login.jpg');
background-size:cover;
}
#contact{
background-image:url('images/user-login.jpg');
background-size:cover;
}

#header-wrapper.header-slider{
background-image:url('images/main-index.jpg');
background-size:cover;
}
   
    </style>
</head>

<body class="body">
<div id="s-body">
	<!-- navbar -->
	<div class="navbar-wrapper" >
		<div class="navbar navbar-inverse navbar-fixed-top" >
			<div class="navbar-inner" style="height:60px;">
				<div class="container" >
					<!-- Responsive navbar -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
			
					          
          <div class="brand" style="position: fixed; text-align:center; top: -10px; left: 40%; ">
            <a href="index.jsp"><h1 style="color:white;"><b>SkyShield</b></h1></a>
          </div>
        </div>
        </br></br> 
        
       
        
        <!-- navigation -->
					<nav class="pull-right nav-collapse collapse" style="margin-top:-30PX;">
						<ul id="menu-main" class="nav">
							
						 <li><a title="header-wrapper" class="btn btn-primary "  href="#header-wrapper" onclick="checkvariability();">Home</a></li>
							
							<li><a title="services" class="btn btn-primary" href="#services" onclick="checkvariability1();">Admin Login</a></li>
							<li><a title="contact" class="btn btn-primary" href="#contact" onclick="checkvariability2();">User Login</a></li>
							
						</ul>		
						
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Header area -->
	<div id="header-wrapper" class="header-slider">
		<header class="clearfix">
			<div class="logo">
				
			</div>
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="main-flexslider" class="flexslider">
							<ul class="slides">
							
							
							</ul>
						</div>
						<!-- end slider -->
					</div>
				</div>
			</div>
		</header>
	</div>
	
	<!-- end spacer section -->
	
	
	<!-- section: contact -->
	<section id="contact" class="section green">
		<div class="user_form">
		<div class="container">
			<h2><b>User Login</b></h2>
			
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
						<div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div>
						<form name="login-form" class="login-form" action="<%=request.getContextPath()%>/Login" method="get">
						

							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="username" class="form-control" id="name" placeholder="Your UserName"  />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="password" class="form-control" name="password" id="email" placeholder="Your Password" style="width:555px;height:50px;" />
										<div class="validation"></div>
									</div>
									</br>
									
									<%
				if(Utility.parse(request.getParameter("ATT"))==3)
				{
					/* Vector v=Utility.GetATT();
					Vector code=new Vector();
					 */
					
					
		    %>		
		           <tr>
		           <td colspan="3" align="center">
		     <%       	
					for(int i=0;i<5;i++)
					{
			 %>
						   
						    		
						<%-- <img height="50" width="50" src="<%=request.getContextPath() %>/res/Images/ATT/<%=v.get(i) %>"> --%>
						 	
			<%  		//code.add(v.get(i));
			
					}	
		     		/* session.setAttribute("code",code); */
			%>
			         </td>
			         </tr>
			         
					<!-- <tr>
							<td colspan="3" align="center"><input placeholder="Enter Above Code" type="text" name="code"/></td>
					</tr> -->
					
					<tr>
					<div>
					<input type="submit" name="Submit" value="Login" onclick="return check();" class="btn btn-theme pull-left" />
					<input type="hidden" name="submit" value="ATT" class="btn btn-theme pull-left" >
						
					</div>
					</tr>
					
			<%
				}
				else
				{
			%>
					<tr>
						<td><b style="color:white">Trusted System :</b></td>
						<td><input  class="field" type="checkbox" name="chk" value="YES"/></td>
					</tr>
			</br></br>
					<tr>
					
						<div>
									<input type="submit" name="submit" value="Login" class="btn btn-theme pull-left" >
									<input type="hidden" name="submit" value="ATT_NOT_REQUIRED" class="btn btn-theme pull-left" >
									</div>
									
					</tr>
			<%
				}
			%>
			
			
			</table>
			
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
		</div>
	</section>
	
	<section id="services" class="section green">
	<div class="admin_form">
		<div class="container" style="position:relative;">
			<h2 style=""><b>Admin Login</b></h2>
			
			<div class="blankdivider30" >
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form" >
						<div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div>
						<form name="login-form" class="login-form" action="<%=request.getContextPath()%>/AdminLogin" method="post">
						

							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="username" class="form-control" id="name" placeholder="Your UserName"  />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="password" class="form-control" name="password" id="email" placeholder="Your Password" style="width:555px;height:50px;" />
										<div class="validation"></div>
									</div>
									</br>
									
								
									<div>
									<input type="submit" name="submit" value="Login" class="btn btn-theme pull-left" >
									</div>
									
								</div>
								
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
		</div>
	</section>
	 <footer>
		<div class="container">
			<div class="row">
				<div class="span6 offset3">
					
					
					<span><b>Email id: </b>info@dhsinformatics.com</span></br>
                 <span><b>Contact No: </b>8769878987</span>
				</div>
			</div>
		</div>
		
	</footer> 
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	<script src="js/jquery.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/jquery.localScroll.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/isotope.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/inview.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
	<script src="contactform/contactform.js"></script>
</div>
</body>
<%
		int no=Utility.parse(request.getParameter("no"));
		if(no==1)
		{%>
			<script type="text/javascript">
			javascript:toggle('admin_login')
			document.getElementById("admin_msg").innerHTML="<div style='color:red;text-align:center;border:1px solid red;'>Invalid userid or password....! </div>";
			</script>
		<%}
		else if(no==2)
		{%>
			<script type="text/javascript">
			javascript:toggle('user_login')
			document.getElementById("user_msg").innerHTML="<div style='color:red;text-align:center;border:1px solid red;'>Invalid userid or password....! </div>";
			</script>
		<%}
		else if(no==4)
		{%>
			<script type="text/javascript">
			javascript:toggle('user_login')
			document.getElementById("user_msg").innerHTML="<div style='color:red;text-align:center;border:1px solid red;'>Invalid ATT Code....! </div>";
			</script>
		<%}
		else if(no==5)
		{%>
			<script type="text/javascript">
			javascript:toggle('user_login')
			document.getElementById("user_msg").innerHTML="<div style='color:red;text-align:center;border:1px solid red;'>Opps,Something Went Wrong,Try Again!!!!!</div>";
			</script>
		<%}
		else if(no==0)
		{%>
			<script type="text/javascript">
			javascript:toggle('user_login')
			</script>
		<%}
	%>
	
</html>
