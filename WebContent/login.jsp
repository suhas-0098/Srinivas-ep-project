<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <meta charset="ISO-8859-1">
<meta http-equiv="Refresh" >
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <% 
	String u=request.getParameter("uname"); 
	String p=request.getParameter("pwd"); 
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	PreparedStatement st= con.prepareStatement("select * from registration where username=?");
	st.setString(1, u);
	ResultSet rs=st.executeQuery(); 
	if(rs.next()){ 
	  
		if(rs.getString("Password").equals("Srinu@123")) 
		  {
			  
			  HttpSession se=request.getSession();
			  session.setAttribute("uname",u);
		  response.sendRedirect("Admin1.html");
		
		  } 
		
		else if(rs.getString("Password").equals(p)) 
	  {
		  HttpSession se=request.getSession();
		  session.setAttribute("uname",u);
	  response.sendRedirect("main.jsp");
	
	  } 
	  else 
	  { 
	   out.println("Invalid password try again"); 
	   %>
		<jsp:include page="login.html"></jsp:include>
		<% 
	  } 
	}
	else{
		
	  out.println("You have not registered yet register to get access!!!!");
	  response.sendRedirect("signup.html");
	}

%>
</body>
</html>





