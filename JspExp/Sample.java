import java.awt.Button;
import java.awt.Frame;

public class Sample extends Frame {
	Button btn;
	
	public Sample() {
		setSize(400,400);
		btn = new Button("Button");
		btn.setBounds(50,50,50,50);
		setLayout(null);
		setVisible(true);
	}
	public static void mian(String Args[]) {
		new Sample();
	}
}
