import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class GenericServlet extends HttpServlet{
    public void service(HttpServletRequest req, HttpServletResponse res)
    throws IOException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
		int t1 = 0, t2 = 1;
        
        int no = Integer.parseInt(req.getParameter("no"));
        out.println("Inside Generic Servlet (Service Method) ");
        out.println("<br/><br/>");
        out.println("Fibonacci series up to : "+no);
        out.println("<br><br>");
        while (t1 <= no) {
            out.print(t1 + "  ");
            int sum = t1 + t2;
            t1 = t2;
            t2 = sum;
        }
        out.close();
    }
}