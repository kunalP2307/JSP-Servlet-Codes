package mypack;
import mypack.ConnectionFactory;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.sql.*;

public class DbTagHandler extends TagSupport  {
	//Connection con;
	/*public int doStartTag() throws JspException {  
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
			out.println("<table>");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
		
		}catch(Exception e){
			System.out.println(e);
		}  
	    return EVAL_BODY_INCLUDE;
	}  */
	
	public int toEndTag() throws JspException{
	JspWriter out=pageContext.getOut(); 
	  
		try{
			out.println("Connection Closed!");
		}catch(Exception e){}
		/*try {
			con.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}*/
		
		return EVAL_PAGE;
	}
		

}
