<%@page import="com.DAOFactory.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.*"%>

<%@page import="java.util.ArrayList"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index page</title>

</head>
<body>
<center><h1>Welcome</h1></center>

<hr></hr>

<br></br>
		<%
		String uid=(String)session.getAttribute("uid");
			//ArrayList rnum=new ArrayList();
			int rnum=0;
			rnum=Admin.getTwoRandomNumbers();
			System.out.println(">>>>>>rnum>>>>>"+rnum);
			int rno=0;
			String value="";
			
				if(rnum==0)
				{
					value="dog";
				}
				else
				{
					value="cat";
				}
		
		
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("/Servlet1");
		request.setAttribute("selType",value);
		rd.forward(request,response);
		
		%>
         
			
	
</body>
</html>