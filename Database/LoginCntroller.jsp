<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.http.HttpSession" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Login Controller</title>
</head>
<body>
    
	<%!
        Connection con = null;
        HttpSession session = null;
        final String url = "jdbc:mysql://localhost:3306/JDBC?useUnicode=true&characterEncoding=UTF-8";
	    final String username = "root";
	    final String password = "Kunal@123";
	    final String className = "com.mysql.cj.jdbc.Driver";
    
        Connection getConnection(){
            try{
                Class.forName(className);
                con = DriverManager.getConnection(url,username,password);
            }catch(SQLException | ClassNotFoundException e){
                e.printStackTrace();
            }
            return con;
        }

        boolean verifyLoginCreds(String username,String password){
            String sql = "SELECT password FROM login_creds WHERE username = ?";
            String temp = "";
            con = getConnection();
             
            try{

                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1,username);
                ResultSet rs = ps.executeQuery();
                rs.next();
                temp = rs.getString("password");
            
            }catch(SQLException e){
                e.printStackTrace();
            }
            if(temp.equals(password))
                return true;
            else 
                return false;
        }
    %>
    
    <%
        String uname = request.getParameter("uname");
        String upass = request.getParameter("upass");
        if(verifyLoginCreds(uname,upass)){
            session = request.getSession();
            session.setAttribute("user",uname);
            response.sendRedirect("home.jsp");
        }
        else{
            request.setAttribute("msg","Invalid Credentials Please Try Again.! ");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    %>

</body>
</html>