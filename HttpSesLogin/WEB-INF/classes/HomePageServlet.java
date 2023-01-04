

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(false);
		
		String user = session.getAttribute("userName").toString();
		
		out.println("Welcome : "+user);
		out.println("\nSession Id : "+session.getId());
		out.println("\nCreation Time : "+session.getCreationTime());
		out.println("\nLast Accesd Time : "+session.getLastAccessedTime());
		out.println("\nIs New : "+session.isNew());
		
		
		out.println("<html lang=\"en\">\n"
				+ "<head>\n"
				+ "     <title>Home</title>\n"
				+ "</head>\n"
				+ "<body>\n"
				+ "    \n"
				+ "    <form action=\"logout\">\n"
				+ "        <br>\n"
				+ "        <input type=\"submit\" value = \"logout\">\n"
				+ "    </form>\n"
				+ "</body>\n"
				+ "</html>");

		
	}


}
