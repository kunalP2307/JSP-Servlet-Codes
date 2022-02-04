<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
            
<html>
    <head>
    <center>
        <h3>
        Program to Demonstrate XML Tags
         <hr>
        </h3>
    </center>
    </head>

    <body>
        
        <h4>
            Showing 3 Products Using XML Tags
        </h4>
     
        <center>
        <c:set var="product">
            <products>
                <product>
                    <id>11</id>
                    <name>Watch</name>
                    <price>$ 12</price>
                </product>
                <product>
                    <id>12</id>
                    <name>SmartPhone</name>
                    <price>$ 100</price>
                </product>
                <product>
                    <id>13</id>
                    <name>Sunglasses</name>
                    <price>$ 10</price>
                </product>
            </products>
        </c:set>
    </center>
        <x:parse xml="${product}" var="productList" />
        Product Id : <b><x:out select="$productList/products/product[1]/id" /><br></b>
        Product Name : <b><x:out select="$productList/products/product[1]/name" /><br></b>
        Product Price : <b><x:out select="$productList/products/product[1]/price" /><br> </b><hr>
     
        Product Id : <b><x:out select="$productList/products/product[2]/id" /><br></b>
        Product Name : <b><x:out select="$productList/products/product[2]/name" /><br></b>
        Product Price : <b><x:out select="$productList/products/product[2]/price" /><br> </b><hr>

        Product Id : <b><x:out select="$productList/products/product[3]/id" /><br></b>
        Product Name : <b><x:out select="$productList/products/product[3]/name" /><br></b>
        Product Price : <b><x:out select="$productList/products/product[3]/price" /><br> </b><hr>
      
        <hr>
        <center>
        <form action="home.jsp">
            User Name : <input type="text" name="uName"/><br>
            Item id :  <input type="number" name="itemId"><br>
            Quantity : <input type="number" name="qty"><br><br>
            <input type="submit" value="Go to Cart">
        </center>

    </body>

    </html>