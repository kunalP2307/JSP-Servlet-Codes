<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <center>
        <h3>
          Cart <hr>
        </h3>
    </center>
</head>
<body>
    <center>
    <c:out value="Welcme ${param.uName}"/> <br><br>
    <c:set var="item" scope="request" value="${param.itemId}"/>  

    <c:set var="qty" scope="request" value="${param.qty}"/> 
    
    <c:set var="id" scope="request" value="${param.itemId}"/> 
    
    Item id :<c:out value="${id}"/> <br>
    Quantity : <c:out value="${qty}"/> <br>

    <c:if test="${id == 11}">
        <c:set var="total" scope="request" value="${qty*12}"/> 
      <br>  Total Price : $ <c:out value="${total}"/> <br>
    </c:if>  
    
    <c:if test="${id == 12}">
        <c:set var="total" scope="request" value="${qty*100}"/> 
      <br>  Total Price : $ <c:out value="${total}"/> <br>
    </c:if>  
    
    <c:if test="${id == 13}">
        <c:set var="total" scope="request" value="${qty*10}"/> 
      <br>  Total Price : $ <c:out value="${total}"/> <br>
    </c:if>  

    <br><br>

    <form action="checkout.jsp">

        <input type="submit" value="Checkout">

    </form>

    </center>
</body>
</html>