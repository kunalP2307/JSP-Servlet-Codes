import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class MyServlet extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws IOException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
		int t1 = 0, t2 = 1;
        
        int no = Integer.parseInt(req.getParameter("no"));
        
        out.println("Fibonacci series up to : "+no);
        while (t1 <= no)
        {
            out.print(t1 + "  ");

            int sum = t1 + t2;
            t1 = t2;
            t2 = sum;
        }

        out.close();
    }
}
