<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 9 </title>
</head>
<body>
<form action = "threadmanag.jsp">
	<center>
        <h2>This Is The JSP Program For Demonstration Thread Management </h2>
            <br>
            <hr>
            <h4>You will See The Table of Entered number Would be Printed In Slow Format </h4>
        <br><br>	 
          Number :- <input type="number" name="num"> 
        <br>
        <br>
         <input type = "submit" value = "Check Out"> 
   <hr>

<% 
try{
Thread t=new Thread();

String n=request.getParameter("num");

if(n.equals(null))
{
 out.println("<h3> Enter The Number </h3>");
}
else
{
int a=Integer.parseInt(n);
out.println("<h4>Output Loaded In 10 sec Thread.Sleep() method running </h4>");
Thread.sleep(10000);
for(int i=0;i<=10;i++)
{
	int s =i*a;
	
out.println("<h5>"+s+"</h5>");

}

}
}
catch(Exception e)
{
 System.out.println(e);	
}
%>
</center>

</form>
</body>
</html>