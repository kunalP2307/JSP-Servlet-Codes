

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session  = request.getSession(false);
		session.invalidate();
		out.println("Logged out!! Session Destroyed.!");
		
		// out.println("\nSession Id : "+session.getId());
		// out.println("\nCreation Time : "+session.getCreationTime());
		// out.println("\nLast Accesd Time : "+session.getLastAccessedTime());
		// out.println("\nIs New : "+session.isNew());
		
	}

}
