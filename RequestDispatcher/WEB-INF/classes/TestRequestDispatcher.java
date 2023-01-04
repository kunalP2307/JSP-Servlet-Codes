

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestRequestDispatcher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    
	    String user = request.getParameter("user");
	    String pass = request.getParameter("pass");
	    
	    if(user.equals("kunal") && pass.equals("patil")) {
	    	RequestDispatcher rd = request.getRequestDispatcher("/home.html");
	    	rd.forward(request, response);
	    }
	    else {
	    	out.print("Invalid Credentials Try Again!!");  
	        RequestDispatcher rd=request.getRequestDispatcher("/index.html");  
	        rd.include(request, response);  
	    }
	    
	}
}
