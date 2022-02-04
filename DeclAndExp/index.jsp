<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<center>
    <h4>Program for Demonstrating use of Expressions And Declarations </h4>
    <hr>
    <h2>Student Registration </h2><br>
</center>
</head>

<body>
    <center>
        <form action="profile.jsp">
            Enrollment No : <input type="number" name="enNo" required><br><br>
            Full Name     : <input type="text" name="fName" required><br><br>
            Email         : <input type="email" name="email" required><br><br>
            Admission Year : <input type="date" name="admYear" required><br><br>
            Password : <input type="password" name="password" required><br><br>
            <input type="submit" value="Register">
        </form>
    </center>
</body>
</html>