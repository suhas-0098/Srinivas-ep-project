<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Refresh" content="5;url=login.html">
<title>VOTE</title>
</head>
<body>
<%
   
	String n=request.getParameter("name");
	String e=request.getParameter("email");
	String un=request.getParameter("uname");
	String pas=request.getParameter("pwd");
try{
	Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver"); 
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement msd=con.prepareStatement("insert into registration values(?,?,?,?)");
msd.setString(1,n);
msd.setString(2,e);
msd.setString(3,un);
msd.setString(4,pas);
int a=msd.executeUpdate();
if(a==1)
{
	out.println("Registered Suceessfully");
	%>
	<jsp:include page="login.html"></jsp:include>
	<% 
}
else
{
	out.println("Registration Failed");
	%>
	<jsp:include page="signup.html"/>
	<%
}
}
catch(Exception ex){
	System.out.print(ex);
}
%>


</body>
</html>