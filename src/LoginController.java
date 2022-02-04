package mypack;
import mypack.*; 
import java.sql.*;
public class LoginController{
    Connection con = null;

    public boolean verifyLogin(String username,String password){
        ConnectionFactory cf = new ConnectionFactory();
        con = cf.getConnection();
        return false;
    }
}