<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<html>
<head>
    
</head>
<body>
    <center>

  
    <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
    url="jdbc:mysql://localhost:3306/JDBC?useUnicode=true&characterEncoding=UTF-8"  
    user="root"  password="Kunal@123"/>     

    <c:set var="loginStatus" value="false"/>  

    <sql:query dataSource="${db}" var="rs">  
            select * from login_creds where username = ? and password = ?;
            <sql:param value="${param.uname}" /> 
            <sql:param value="${param.upass}" />             
    </sql:query>  
 
    <c:forEach var="table" items="${rs.rows}">  
        <c:set var="loginStatus" value="true"/>  
    </c:forEach>  

    <c:if test="${loginStatus == 'true'}">
      <br>  <h4> Login Successful</h4> <br>

        Welcome :  <c:out value="${param.uname}"/>
    </c:if>  

    <c:if test="${loginStatus == 'false'}">
      <br>  <h4> Login Failed</h4> <br>
    </c:if>  

    </center>
</body>
</html>