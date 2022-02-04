<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.http.HttpSession" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>home</title>
<center>
    <h3>
        Home Page
        <hr>
    </h3>
</center>
</head>
<body>
    
   <center>
       
    <%
        HttpSession ses  = request.getSession();
        if(ses.getAttribute("user") != null){
            String user = ses.getAttribute("user").toString();
            out.print("<br><br>"+"Welcome "+user);
           
        }
        else{
            request.setAttribute("msg","Invalid Session Login to Continue");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    %>
    <br><br><br>
    <form action="logout.jsp">
        <input type="submit" value="logout">
    </form>
    </center>
    
</body>
</html>