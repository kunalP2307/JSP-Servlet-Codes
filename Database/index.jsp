<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Database Access & Session Tracking</title>
<center>
	<h3> Program to Demonstrate the use of Session Management and Connecting to Database 	<hr> 
</h3>
</center>
</head>
<body>
		<%
			if(request.getAttribute("msg") != null){
				String msg = request.getAttribute("msg").toString();
				out.print(msg);
			}
		%>

		<br><br>
		<center>	
		<form action="LoginCntroller.jsp">
			Username : <input type ="text" name ="uname" required="required"><br><br>
			Password : <input type ="password" name ="upass" required="required"><br><br>		
			<input type = "submit" value ="Login">
		</form>
		<br><br>
		<form action="">
			<a href ="register.html"> Create Account</a>
		</form>
	</center>

</body>
</html>
