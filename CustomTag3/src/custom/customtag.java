package custom;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;
 
public class customtag extends SimpleTagSupport{
	public void doTag() throws JspException,IOException
	{
		JspWriter out = getJspContext().getOut();
		out.println("Hello , This Is Custom Tag Message Generated Hello Message ");
	}
 
}	