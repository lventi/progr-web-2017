import javax.servlet.*; //for ServletException
import javax.servlet.http.*; //for HttpServlet
import java.io.*; //for PrintWriter (and IOException)
import java.util.*;

public class servlet2 extends HttpServlet {
    boolean prima = false;
    public void init() {
	prima = true;
	System.out.println("servlet2 di teledidattica_web_appl_1 appena avviata!");
    }
    public void destroy() {
	System.out.println("servlet2 di teledidattica_web_appl_1 appena fermata!");
    }
    private void doGetPost(HttpServletRequest request, HttpServletResponse response, String GETORPOST)
	throws ServletException, IOException
    {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\n" +
		    "    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
	out.println("<html xmlns = \"http://www.w3.org/1999/xhtml \">");
	out.println( "<head>" );
	out.println( "<title>Secondo esempio di servlet con " + GETORPOST + "</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con " + GETORPOST + "!</h1>" );
	if (prima)
	    out.println( "<h3>Appena caricata</h3>");
	prima = false;
	out.println( "</body>" );
	out.println( "</html>" );

	out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
    {
	doGetPost(request, response, "POST");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
    {
	doGetPost(request, response, "GET");
    }

}
