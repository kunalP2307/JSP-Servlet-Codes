<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <center>
        <h3>
            Program to Demonstrate Core Tags <hr>
        </h3>
    </center>
</head>
<body>
    
    Items :<br><br>

        id <br>
        11 Watch - $ 12<br>
        12 Mobile - $ 100<br>
        13 Sunglasses - $ 10<br>
    <center>
        <br><br>
    <form action="cart.jsp">
        User Name : <input type="text" name="uName"/><br>
        Item id :  <input type="number" name="itemId"><br>
        Quantity : <input type="number" name="qty"><br><br>
        <input type="submit" value="Go to Cart">
    </form> 

</center>
</body>
</html>