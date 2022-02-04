import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HttpDemo extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws IOException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
		
        int no = Integer.parseInt(req.getParameter("no"));
        out.println("<center>");
        
        out.println("<h3>Http Servlet Demo </h3><h4>Program to find Factors of given Number</h4>");
        
        out.println("Factors of : "+no);
        out.println("<br>");
        
        for(int i=2 ; i<no/2; i++)
            if(no%i == 0)
                out.println("   "+i);
        out.println("</center>");
        
        out.close();
    }
}
