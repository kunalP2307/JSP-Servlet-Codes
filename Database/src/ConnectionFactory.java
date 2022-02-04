package mypack;
import java.sql.*;
public class ConnectionFactory{

    Connection con = null;
    final String url = "jdbc:mysql://localhost:3306/JDBC?useUnicode=true&characterEncoding=UTF-8";
	final String username = "root";
	final String password = "Kunal@123";
	final String className = "com.mysql.cj.jdbc.Driver";

    public Connection getConnection(){
        try{
            Class.forName(className);
            con = DriverManager.getConnection(url,username,password);
        }catch(SQLException | ClassNotFoundException e){}
        return con;
    }

}