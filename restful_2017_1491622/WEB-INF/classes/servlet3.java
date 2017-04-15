import javax.servlet.*; //for ServletException
import javax.servlet.http.*; //for HttpServlet
import java.io.*; //for PrintWriter (and IOException)
import java.util.*;
import java.nio.file.*;
import java.nio.charset.*;

public class servlet3 extends HttpServlet {
    String versione;
    public void init() {
	// Metodo molto naif, vedere le lezioni successive per il supporto Java alle configurazioni
	try {
	    versione = new String(Files.readAllBytes(Paths.get("/var/lib/tomcat8/webapps/teledidattica_web_appl_1/configurazione.txt")), StandardCharsets.UTF_8);
	}
	catch (Exception e) {
	    System.out.println("servlet3: eccezione in init:\n\t" + e.getMessage());
	    e.printStackTrace();
	}
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
	out.println( "<title>Terzo esempio di servlet con " + GETORPOST + "</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con " + GETORPOST + " versione " + versione + "!</h1>" );
	out.println("<p>La richiesta viene da " + request.getRemoteAddr() + " (ovvero " + request.getRemoteHost() + "), con porta " + request.getRemotePort() + "</p>");
	Enumeration res = request.getParameterNames();
	while (res.hasMoreElements()) {
	    String param = (String)res.nextElement();
	    out.println( "<h3>Il parametro " + param + " ha valore " + request.getParameter(param) + "</h3>" );
	    String[] values = request.getParameterValues(param);
	    for (int i = 0; i < values.length; i++)
		out.println( "<h3>Il parametro " + param + " ha valore " + (i + 1) + "-esimo " + values[i] + "</h3>" );
	}
	out.println( "<h1>Usando il for sull'iterabile</h1>" );
	for (String param : Collections.list(request.getParameterNames())) {
	    out.println( "<h3>Il parametro " + param + " ha valore " + request.getParameter(param) + "</h3>" );
	    String[] values = request.getParameterValues(param);
	    for (int i = 0; i < values.length; i++)
		out.println( "<h3>Il parametro " + param + " ha valore " + (i + 1) + "-esimo " + values[i] + "</h3>" );
	}
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
