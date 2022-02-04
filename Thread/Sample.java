import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.net.InetAddress;

public class Sample  {
	
	public static void main(String args) throws Exception{
		
		InetAddress ob1 = InetAddress.getByName("www.google.com");
		InetAddress ob2 = InetAddress.getByName("www.google.com");
		boolean b = ob1.equals(ob2);
		System.out.println(b);
		
	}
}
