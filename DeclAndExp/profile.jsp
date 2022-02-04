<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<center>
    <h4>Program for Demonstrating use of Expressions and Declarations
    </h4>
    <hr>
    <h2>Student Details </h2><br>
</center>
</head>

<body>

    <!--Use of Declaratives -->
    <%!

    public class Student{
   
        private int enNo;
        private String fullName;
        private String email;
        private String admissionYear;
        private String password;
        
        public Student(int a){

        }
        public Student(int enNo,String fullName,String email,String admissionYear,String password){
           this.enNo = enNo;
           this.fullName = fullName;
           this.email = email;
           this.admissionYear = admissionYear;
           this.password = password;
        }
        
        public int getEnNo(){
            return this.enNo;
        }

        public String getFullName(){
            return this.fullName;
        }

        public String getEmail(){
            return this.email;
        }

        public String getAdmYear(){
            return this.admissionYear;
        }   
    }

    %>

    <%
        int en = Integer.parseInt(request.getParameter("enNo"));
        String name = request.getParameter("fName");
        String email = request.getParameter("email");
        String year = request.getParameter("admYear");
        String pass = request.getParameter("password");
        Student s = new Student(en,name,email,year,pass);
    %>
    <!--Use of Expressions to Display Student Details-->
    <center>   
        <b>Enrollment No :</b><%= s.getEnNo()%><br>
        <b>Name :</b><%= s.getFullName()%><br>
        <b>Email :</b><%= s.getEmail()%><br>
        <b>Admission Year :</b><%= s.getAdmYear()%>
    </center>
</body>
</html>
