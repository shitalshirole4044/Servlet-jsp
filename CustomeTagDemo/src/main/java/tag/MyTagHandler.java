package tag;



import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport {
	public int doStartTag()throws JspException{
		try {
			JspWriter out=pageContext.getOut();
			out.println("<h1>This is my custom tag</h1>");
			out.println("<p>This is para</p>");
			out.println(new Date());
		}catch(Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
}
