<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>

<html>
   <head>
      <title>First JSP</title>
   </head>
   
   <body>
        <center>
            <h3>JSP Program to display Date And Time</h3>  
        </center>
        <hr>
        <%
            Date dNow = new Date();
            SimpleDateFormat ft = 
            new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
        %>
        <center>
            <h5>
                Current Date and Time
            </h5>
            <h5>
                <%= ft.format(dNow)%>
            </h5>
        </center>
   </body>
</html>