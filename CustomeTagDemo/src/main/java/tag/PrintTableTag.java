package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintTableTag extends TagSupport{
	public int number;
	
	public void setNumber(int number) {
		this.number=number;
	}
	public int doStartTag()throws JspException{
		JspWriter out=pageContext.getOut();
		for(int i=1;i<=10;i++) {
			try {
				out.println(number*i);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return SKIP_BODY;
	}
}
