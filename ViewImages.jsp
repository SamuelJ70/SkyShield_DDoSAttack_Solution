<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>

<%@page import="com.DAOFactory.User"%>


<%@page import="com.util.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Images here</title>
<style>
.wrapper {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 10px;
}
</style>
</head>
<body>


<% boolean flag1=false;
int flag2=0;
int flag3=0;
boolean flag=false;

String ip="";
int k1=5,k2=3;
ip=request.getLocalAddr();
System.out.println("the local ip address in vimages"+ip);
ip = request.getRemoteAddr();
System.out.println("the ip address is vimages"+ip);
k1 = Integer.parseInt(Utility.getPro("k1"));
k2 = Integer.parseInt(Utility.getPro("k2"));

%>
		<%
		
			ArrayList imgAlist=new ArrayList();
			ArrayList imgTypeAlist=new ArrayList();
			String sel_ltype="";
			String uid="";
			
			//declaring two counters and initializing to 0
			int counter1=0;
			int counter2=0;
			
			//retrieving counter2 from req.getAttribute
			 if(request.getAttribute("countVal")!=null)
			 {
					counter2=(Integer)request.getAttribute("countVal");
					
		     }
			System.out.println("===========counter2 value---------->>" +counter2);
			
			
			//retrieve attributes from session
			HttpSession session2=request.getSession();
			//session2.setMaxInactiveInterval(60);
			imgAlist=(ArrayList)session2.getAttribute("imgList");
			imgTypeAlist=(ArrayList)session2.getAttribute("imgTypeList");
			sel_ltype=(String)session2.getAttribute("selType");
			uid=(String)session.getAttribute("uid");
  		   // String id1=(String)session2.getAttribute("idofmember");
			
	
			//looping imgTypeAlist to increment counter1
			for(int i=0;i<imgTypeAlist.size();i++)
			{
				if(imgTypeAlist.get(i).equals(sel_ltype))
				{
					counter1=counter1+1;
				}
			}
			System.out.println("---------Counter1 value (no. of selected img count--------)--->>" +counter1);
			
			//retrieving link value from session attribute
			String linkValue="";
			linkValue=(String)session2.getAttribute("linkVal");
			
		%>
		<center>
				<form name="myForm" action="points.jsp">
				<h2>Captcha Test</h2>
						
							<%
								if(sel_ltype!=null)
								{
						     %>
							
							<tr>
							    
								<td colspan="4" align="center"><h2><font color="blue">Click On <%=sel_ltype%> Image</font></h2></td>
							</tr>
							
							<%
								}
								
							%>	
							
						<table height="20" width="40" bgcolor="#E0FFFF" border="2">
							<tr>
								
							
<tr>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(0)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(0)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(1)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(1)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(2)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(2)%>&counter2=<%=counter2%>'"/></td>
										
										
										</tr>
									<%-- 	<% } else{%> --%>
										<tr>
											<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(3)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(3)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(4)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(4)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(5)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(5)%>&counter2=<%=counter2%>'"/></td>
										</tr>
										
											<tr>
											<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(6)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(6)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(7)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(7)%>&counter2=<%=counter2%>'"/></td>
										<td><img  src="<%=request.getContextPath()%>/Clickimages/<%=imgAlist.get(8)%>" width="85" height="85" onclick="window.location.href='<%=request.getContextPath()%>/Servlet2?img_name=<%=imgAlist.get(8)%>&counter2=<%=counter2%>'"/></td>
										</tr>
									
							
								
							</tr>
								</table>
							<tr>
							</br>
								<%
									if(counter1==counter2)
									{
										
										System.out.println("********counter1 and counter2 are equal*******");
								%>
								
								
								
								
								
								
								
								
								
								
								
								<%
								
								
								flag1 = User.trackUserIn_W(uid,ip);
								System.out.println("flag1 value is................"+flag1);
								flag2 = User.getFS(uid,ip);
								System.out.println("flag2 value is................"+flag2);
								flag3 = User.getFT(uid);
								System.out.println("flag3 value is................"+flag3);
								if( ((flag1)&&(flag2<k1))  || (flag3<k2))
								{
									//If Trusted User
					
										System.out.println("its came inside the if loop 1.........");
										System.out.println("The User Is Trusted.");
									
									
											flag = User.initFStoDefault(uid,ip);
										}
										
							
									else// Untrusted User
								
										{
											User.initFTtoDefault(uid);
										} 
										
								
								%>
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
					<%-- 		<td colspan="4" align="center"><input type="button" value="OK" onclick="window.location.href='<%=request.getContextPath()%>/UserHome'"></td>	 --%>
										
										
												
							<td colspan="4" align="center"><input type="button" value="OK" onclick="window.location.href='<%=request.getContextPath()%>/index.jsp'"></td>	
										
									<%-- <td colspan="4" align="center"><input type="button" value="OK" onclick="window.location.href='<%=request.getContextPath()%>/LinkPage.jsp?uid=<%=uid %>'"></td>	 --%>
								<%		
									}
									else
									{
										
								%>		
										<%-- <td colspan="4" align="center"><input type="button" value="OK" onclick="window.location.href='<%=request.getContextPath()%>/UserHome'"></td>	 --%>
										
										 <td colspan="4" align="center"><input type="button" value="OK" onclick="window.location.href='<%=request.getContextPath()%>/LinkPage.jsp?uid=<%=uid %>'"></td>	
	
								<%
									}
								%>
							
							
							
							</tr>
						
					
			    </form>
		
		
		</center>
</body>
</html>