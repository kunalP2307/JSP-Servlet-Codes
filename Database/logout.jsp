<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Logout</title>
</head>
<body>
    
	<%
        HttpSession ses  = request.getSession();
        ses.invalidate();
        request.setAttribute("msg","Logged Out!");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    
    %>



</body>
</html>