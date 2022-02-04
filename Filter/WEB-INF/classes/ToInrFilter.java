import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException; 

public class ToInrFilter implements Filter {

	@Override
	public void doFilter(ServletRequest sReq, ServletResponse sRes, FilterChain filterChain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)sReq;
		int usdRog = Integer.parseInt(request.getParameter("usdRog"));
		int usd8t = Integer.parseInt(request.getParameter("usd8t"));
		int usdIph12 = Integer.parseInt(request.getParameter("usdIph12"));
		
		double inrRog = usdRog * 72.91;
		double int8t = usd8t * 72.91;
		double inrIph12 = usdIph12 * 72.91;

		request.setAttribute("inrRog", inrRog);
		request.setAttribute("inr8t", int8t);
		request.setAttribute("inrIph12", inrIph12);

		filterChain.doFilter(sReq, sRes);
	}
}
