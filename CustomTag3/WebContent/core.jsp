<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 13</title>
</head>
<body>
<center>
<h2>This Is The JSP Program For Demonstration JSTL And Custom Tag</h2>
 <br>
<h2> Core Tag Examples</h2><br><h3>Tags Used out,set,if,foreach</h3>
 <hr>
 <h4>This Is Example prints Even Odd till 20</h4>
 </center>
 <c:forEach var="oddeve" begin="0" end="20">
 <c:if test="${oddeve%2==0}">
   <c:out value="${oddeve} is Even Number"/> <brs>
   </c:if>

   <c:if test="${oddeve%2!=0}">
   <c:out value="${oddeve} is Odd Number"/> <br>
   </c:if>
</c:forEach>
<br>
<center>
<a href="main.jsp"><button  type="button"  style="margin-right: 56px; height: 40px;  width: 150px; font-size: 20px;">Go Back</button></a>  
</center>
</body>
</html>