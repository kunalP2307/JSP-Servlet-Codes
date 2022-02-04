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
   
   int no = Integer.parseInt(request.getParameter("no"));
   out.println("<center>");
   
   out.println("Factors of : "+no);
   out.println("<br>");
   
   for(int i=2 ; i<no/2; i++)
       if(no%i == 0)
           out.println("   "+i);
    out.println("</center>");
   %>
</body>
</html>