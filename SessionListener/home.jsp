<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Profile</title>
<center>
    <h3>
        Home Page
        <hr>
    </h3>
</center>
</head>
<body>
    
   <center>
    <h4>
        Welcome.!
    </h4>
    <%
        HttpSession ses  = request.getSession();
    %>
    <br><br><br>
    <form action="logout.jsp">
        <input type="submit" value="logout">
    </form>
    </center>
    
</body>
</html>