package mypack;
import mypack.ConnectionFactory;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.sql.*;

public class DbTagHandler extends TagSupport  {
	Connection con;
	public int doStartTag() throws JspException {  
		ConnectionFactory conF = new ConnectionFactory();
		con = conF.getConnection();
		Statement stmt;
		ResultSet rs = null;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM login_creds;");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		JspWriter out=pageContext.getOut(); 
	    try{  
	   	 	out.println("username    password"+"<br>");
	   	 	out.println("----------------------------"+"<br>");
	   	 	
			while(rs.next()){
				out.println(rs.getString(1));
				out.println(rs.getString(2)+"<br>");
			}
			
		}catch(Exception e){
			
		}  
	    return EVAL_BODY_INCLUDE;
	}  
	
	public int toEndTag() throws JspException{
	JspWriter out=pageContext.getOut(); 
	  
		try{
			out.println("Connection Closed!");
		}catch(Exception e){}
		try {
			con.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		return EVAL_PAGE;
	}
		

}
