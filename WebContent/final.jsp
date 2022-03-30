<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
	String username=(String)session.getAttribute("uname");
    String branch=request.getParameter("branch");
    String year=request.getParameter("year");
    String vote=request.getParameter("vote");
   
try{
	Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver"); 
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement msd=con.prepareStatement("insert into vote values(?,?,?,?)");
msd.setString(1,username);
msd.setString(2,branch);
msd.setString(3,year);
msd.setString(4,vote);
int n=msd.executeUpdate();
System.out.println(n);
con.close();
if(n>0)
{
	
	response.sendRedirect("main.jsp"); 
}
else
{
	
}
}
catch(Exception ex){
	out.println("you have already voted");
	System.out.print(ex);
}

%>
</body>
</html>