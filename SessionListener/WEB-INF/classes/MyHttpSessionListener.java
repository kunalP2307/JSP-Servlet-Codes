import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.Date;
import java.text.DateFormat;  
import java.text.SimpleDateFormat;

public class MyHttpSessionListener implements HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent httpSessionEvent){
		System.out.println("\nInside sessionCreated() method :");					
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		System.out.println("User Logged on at :"+dateFormat.format(date));					
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent httpSessionEvent){
		System.out.println("\nInside sessionDestroyed() method :");					
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		System.out.println("User Logged out at :"+dateFormat.format(date));					
	}
}