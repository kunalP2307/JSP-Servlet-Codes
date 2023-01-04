

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

public class LoginFilter extends HttpFilter implements Filter {
       
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    	
    	String user = request.getParameter("user");
    	String pass = request.getParameter("pass");
    	
    	if(user.equals("kunal")) {
    		RequestDispatcher rd = request.getRequestDispatcher("user.html");
    		rd.forward(request, response);
    	}
    	else if(user.equals("admin")) {
    		RequestDispatcher rd = request.getRequestDispatcher("admin.html");
    		rd.forward(request, response);
    	}
    	
    }
}
