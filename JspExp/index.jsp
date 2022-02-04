<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Use of Directives-->
<%@ page import = "java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dice Game</title>
<h3>
    <center>
        JSP Program to Deomonstrate the use of all basic elements   
    </center>
</h3>
<hr>
</head>
<body>
    <!--Use of Declaratives -->
        <%! Random random = new Random();%>
        <%! int diceNo = 0;%>
    <br>
    <!--Use of Scriplets-->   
        <%  while (true){
                diceNo = random.nextInt(6);
                if(diceNo !=0) break;
            }; 
        %>
        <center>
        <h3 style="color: red;">
            Dice Value
        </h3>    
        <h1> 
        <!--Use of Expression-->   
        <%= diceNo %>
        </h1>
            <a href="index.jsp">
                <button>Throw Dice</button>
            </a>
        </center>     
</body>
</html>
