

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServletContext extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = getServletContext();
		PrintWriter out = response.getWriter();
		application.setAttribute("course", "Advanced Java");
		
		String courseName = application.getAttribute("course").toString();
		String laptopModel = application.getInitParameter("model");
		out.println("<h1>Laptop Model (context param): "+laptopModel+"</h1>");
		out.println("<h1>Course Name (atribute): "+courseName+"</h1>");
		
	}
}
