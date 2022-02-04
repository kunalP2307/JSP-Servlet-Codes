<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
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
<h2> Format Tag Examples</h2><h3>Tags Used parsenumber,Parsedate,setTimezone,FormatDate</h3>
 <hr>
 <h4>This Is Example uses various Format tags</h4>
 <br>  <h3>The fmt:ParseNumber Tag Example </h3>  
<c:set var="num" value="346.970" />  
  <fmt:parseNumber var="a" type="number" value="${num}" />  
    <p>Number is:  <c:out value="${a}" /></p>  
  
    <fmt:parseNumber var="a" integerOnly="true" type="number" value="${num}" />  
    <p>Number After integerOnly() is:  <c:out value="${a}" /></p> 
    <hr> 
    <h3>The fmt:FormatNumber Tag Example </h3>  
    <fmt:formatNumber var="a" value="${num}" type="currency" /></p>  
     <p>Number is:  <c:out value="${a}" /></p>  
     <hr>
      <h3>The fmt:Paresdate Tag Example </h3> 
     <c:set var="date" value="05-06-2021" />  
     <fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
     <p>Parsed Date :- <c:out value="${parsedDate}" /></p> 
     <hr>
     <h3>The fmt:FormateDate And SetTimeZone Tag Example </h3> 
     <c:set var="date" value="<%=new java.util.Date()%>" />  
      <fmt:formatDate var="newDate" value="${date}" type="both" timeStyle="long" dateStyle="long" /></p> 
      <p>Formatted Date By Indian Time Zone  :- <c:out value="${newDate}" /></p>  
<fmt:setTimeZone value="US" />  
<p>Date and Time in US time Zone: <fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long" /></p>
 </center>
</body>
</html>