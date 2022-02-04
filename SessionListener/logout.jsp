<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Event Listeners</title>

</head>
<body>
    
   <center>
       
    <%
        HttpSession ses  = request.getSession();
        ses.invalidate();
    %>
    <h3>
        Logged Out.!
    </h3>
    <br><br><br>
    <form action="index.html">
        <input type="submit" value="Home">
    </form>
    </center>
    
</body>
</html>