package mypack;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnectionFactory {
	
	final String url = "jdbc:mysql://localhost:3306/JDBC?useUnicode=true&characterEncoding=UTF-8";
	final String username = "root";
	final String password = "Kunal@123";
	Connection con = null;
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

}
