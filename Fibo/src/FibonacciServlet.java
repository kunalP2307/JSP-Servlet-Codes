/*
 * Save as a FibonacciServlet.java
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author R4R
 */
public class FibonacciServlet extends HttpServlet {

public void doGet(HttpServletRequest request,
 HttpServletResponse response)throws ServletException, IOException
{
	response.setContentType("text/html;charset=UTF-8");
	PrintWriter out = response.getWriter();
	out.println("hello");
}
}
