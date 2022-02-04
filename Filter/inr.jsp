<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter Demo</title>
</head>
<center>
    <h2>
        JSP program program for Demonstration of Filters
        <hr>
    </h2>
</center>
<body>


   
    <%! double inrRog,inr8t,inrIph12;
    %> 


    <%
      inrRog = (double)(request.getAttribute("inrRog"));
      inr8t = (double)(request.getAttribute("inr8t"));
      inrIph12 = (int)(double)(request.getAttribute("inrIph12"));    
    %>

    <center>
        <h3 style="color: red;">
            Snartphones..
        </h3><br>


        Showing Prices in INR<br><br>
       <b>ROG Phone 5 : <i style="color: blue;">&#x20b9; <%=inrRog%></i></b> <br><br>
       <b>OnePlus 8T : <i style="color: blue;">&#x20b9; <%=inr8t%></i></b> <br><br>
       <b>iPhone 12 : <i style="color: blue;">&#x20b9; <%=inrIph12%></i></b> <br><br>
       
        <form action="index">
            <input type="submit" value="Show Prices in USD">
        </form>
    
</center>
    
</body>
</html>