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
   
    
    <center>
        <h3 style="color: red;">
            Snartphones..
        </h3><br>
        Showing Prices in USD<br><br>
       <b>ROG Phone 5 : <i style="color: blue;">$668</i></b> <br><br>
       <b>OnePlus 8T : <i style="color: blue;">$560</i></b> <br><br>
       <b>iPhone 12 : <i style="color: blue;">$960</i></b> <br><br>
    
    <form action="inr">
        <input type="hidden" name="usdRog" value="668">
        <input type="hidden" name="usd8t" value="560">
        <input type="hidden" name="usdIph12" value="960">
        <input type="submit" value="Show Prices In INR"><br>
    </form>
    
</center>
    
</body>
</html>