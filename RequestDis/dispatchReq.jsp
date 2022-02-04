<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<center>
    <h4>Program for Demonstrating use of request dispatching
    </h4>
    <hr>
    <br>
</center>
</head>
<body>
    <%
        if(request.getParameter("opCode").equals("1")){
            request.getRequestDispatcher("fibo.jsp").forward(request,response);
        }
        else{
            response.sendRedirect("error.jsp");
        }
    %>
</body>
</html>