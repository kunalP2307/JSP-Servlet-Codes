import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class MyServlet extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws IOException{
        res.setContentType("text/html");
        
        PrintWriter out = res.getWriter();
		
         out.println("Fibonacci series up to : ");
      

        out.close();
    }
}
