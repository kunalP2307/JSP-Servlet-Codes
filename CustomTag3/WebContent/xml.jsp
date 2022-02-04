<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
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
<h2> XML Tag Examples</h2><br><h3>Tags Used parse,out,set select</h3>
 <hr>
 <h4>This Is Example prints Car Info</h4>
 </center>
 <h2>Car Information:</h2>  
<c:set var="car">  
<cars>  
    <car>  
      <name>Audi Q7</name>  
      <price>70L</price>  
    </car>  
  <car>  
      <name>BMW i8</name>  
      <price>80L</price>  
    </car> 
 <car>  
      <name>Range Rover Defender</name>  
      <price>1 cr</price>  
    </car> 
</cars>  
</c:set>  

 <x:parse xml="${car}" var="output"/>  
Name of the Car is:  
<x:out select="$output/cars/car[1]/name" /><br>  
Price of the Car is:  
<x:out select="$output/cars/car[1]/price" /><br><br><br>

Name of the Car is:  
<x:out select="$output/cars/car[2]/name" /><br>  
Price of the Car is:  
<x:out select="$output/cars/car[2]/price" /><br><br><br>

Name of the Car is:  
<x:out select="$output/cars/car[3]/name" /><br>  
Price of the Car is:  
<x:out select="$output/cars/car[3]/price" /><br><br><br>

<hr>
<x:set var="carset" select="$output/cars/car[3]/price"/> 
The Range Rover Car Price Is :- :  
<x:out select="$carset" /> 
<br>
<center>
<a href="main.jsp"><button  type="button"  style="margin-right: 56px; height: 40px;  width: 150px; font-size: 20px;">Go Back</button></a>  
</center>
</body>
</html>