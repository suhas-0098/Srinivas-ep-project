<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">College Voting System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.html">Home</a>
        </li>
        
      </ul>
      <a href="logout.jsp" >
            <button type="button" class="btn btn-success" >
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg>
&nbsp;
LogOut
          </button>
        </a>
    </div>
  </div>
</nav>




<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title></title>
  </head>
  <body>

 
 
 <div class="row row-cols-1 row-cols-md-2 g-4">


<div class="card text-dark bg-light" style="width: 18rem;">
  <img src="images/CSE.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">CSE</h5>
    <p class="card-text">VOTE HERE</p>
  </div>
  <div class="card-body">
  <form action="Adminview.jsp"> 
  <input type="hidden" name="branch" value="CSE">
    <button type="submit" class="btn btn-danger">VIEW</button>
  </form>
  </div>
</div>

&nbsp;
&nbsp;
<div class="card text-dark bg-light" style="width: 18rem;">
  <img src="images/ECE.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">ECE</h5>
    <p class="card-text">VOTE HERE</p>
  </div>
  <div class="card-body">
  <form action="Adminview.jsp"> 
  <input type="hidden" name="branch" value="ECE">
    <button type="submit" class="btn btn-danger">VIEW</button>
  </form>
  </div>
</div>
&nbsp;
&nbsp;
<div class="card text-dark bg-light" style="width: 18rem;">
  <img src="images/mech.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">MECH</h5>
    <p class="card-text">VOTE HERE</p>
  </div>
  <div class="card-body">
  <form action="Adminview.jsp"> 
  <input type="hidden" name="branch" value="MECH">
    <button type="submit" class="btn btn-danger">VIEW</button>
  </form>
  </div>
</div>
&nbsp;
&nbsp;
<div class="card text-dark bg-light" style="width: 18rem;">
  <img src="images/EEE.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">EEE</h5>
    <p class="card-text">VOTE HERE</p>
  </div>
  <div class="card-body">
  <form action="Adminview.jsp"> 
  <input type="hidden" name="branch" value="EEE">
    <button type="submit" class="btn btn-danger">VIEW</button>
  </form>
  </div>
</div>
&nbsp;
&nbsp;
<div class="card text-dark bg-light" style="width: 18rem;">
  <img src="images/civil.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">CIVIL</h5>
    <p class="card-text">VOTE HERE</p>
  </div>
  <div class="card-body">
  <form action="Adminview.jsp"> 
  <input type="hidden" name="branch" value="CIVIL">
    <button type="submit" class="btn btn-danger">VIEW</button>
  </form>
  </div>
</div>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<%
String username=(String)session.getAttribute("uname");

System.out.print(username);
%>
    
</body>
</html>