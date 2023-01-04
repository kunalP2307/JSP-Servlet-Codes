


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContLis implements ServletContextListener {

	public void contextInitialized(ServletContextEvent context){  
		
		ServletContext application = context.getServletContext();
		Company company = new Company(101, "NEw Company", 434545465);
		
		application.setAttribute("default_com",company);
		System.out.println("Servlet Context Initialized..!");
	}  
}
