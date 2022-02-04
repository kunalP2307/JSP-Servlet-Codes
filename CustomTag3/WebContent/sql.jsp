<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 13 </title>
</head>
<body>
<center>
<h2>This Is The JSP Program For Demonstration JSTL And Custom Tag</h2>
 <br>
<h2> SQL Tag Examples</h2><br><h3>Tags Used setDataSource,query</h3>
 <hr>
 <h4>This Is Example prints Data From Database</h4>
  <sql:setDataSource var = "snapshot" driver ="oracle.jdbc.OracleDriver" url ="jdbc:oracle:thin://localhost:1521/XE" user ="system"  password ="2002"/>
 <sql:query var = "result">
            SELECT * from Cars;
         </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Car ID</th>
            <th>Car Model</th>
            <th>Car Comp</th>
            <th>Car Price</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.carid}"/></td>
               <td> <c:out value = "${row.carmodel}"/></td>
               <td> <c:out value = "${row.carcomp}"/></td>
               <td> <c:out value = "${row.carprice}"/></td>
            </tr>
         </c:forEach>
      </table>
 
 </center>
</body>
</html>