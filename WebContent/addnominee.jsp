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
String id=request.getParameter("id");
String name=request.getParameter("name");
String year=request.getParameter("year");
String branch=request.getParameter("branch");
String phonenumber=request.getParameter("phonenumber");
String symbol=request.getParameter("symbol");
String email=request.getParameter("email");
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement st= con.prepareStatement("insert into nominees values(?,?,?,?,?,?,?)");
st.setString(1, id);
st.setString(2, name);
st.setString(3, year);
st.setString(4, branch);
st.setString(5, phonenumber);
st.setString(6, symbol);
st.setString(7, email);
int success=st.executeUpdate();

%>
</body>
</html>