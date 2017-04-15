import javax.servlet.*; //for ServletException
import javax.servlet.http.*; //for HttpServlet
import java.io.*; //for PrintWriter (and IOException)
import java.util.*;

public class servlet1 extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
    {
	response.setContentType("text/html"); //facoltativo, e' il default
	//response.setContentType("text/plain"); //provare anche cosi', va messo prima del commit della risposta (in questo esempio, prima del out.close())
	PrintWriter out = response.getWriter();
	out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n" +
		    "    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
	out.println("<html xmlns = \"http://www.w3.org/1999/xhtml \">");
	out.println( "<head>" );
	out.println( "<title>Primo esempio di servlet con GET</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con GET!</h1>" );
	out.println( "</body>" );
	out.println( "</html>" );

	System.out.println("DEBUG!");
	System.out.flush(); //da vedere nei log di Tomcat

	// ritarda(); //ritarda effettivamente 
	out.close(); // non obbligatorio, viene chiuso comunque alla fine del metodo
	System.out.println("DEBUG2!");

	ritarda(); //non ritarda: oramai l'output e' stato chiuso e contestualmente inviato (prima della fine di questo metodo, quindi)
	System.out.println("DEBUG3!"); //questo pero' e' ritardato...
	out.println( "</html>" ); // stampato solo se commentata riga precedente
    }

    private void ritarda()
    {
	int k = 0;
	final int LIMIT = 100000;
	for (int e = 0; e < LIMIT; e++){
	    for (int j = 0; j < LIMIT; j++){
		for (int i = 0; i < LIMIT; i++) {
		    k++;
		}
	    }
	}
    }

    // invocare in POST questa servlet, senza definire questo metodo, porta ad un "HTTP method POST is not supported by this URL"
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	throws ServletException, IOException
    {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n" +
		    "    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
	out.println("<html xmlns = \"http://www.w3.org/1999/xhtml \">");
	out.println( "<head>" );
	out.println( "<title>Primo esempio di servlet con POST</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con POST!</h1>" );
	out.println( "</body>" );
	out.println( "</html>" );

	out.close();
    }

    // protected void doHead(HttpServletRequest request, HttpServletResponse response)
    // 	throws ServletException, IOException
    // {
    // 	super.doHead(request, response);
    // }

    // protected void doPut(HttpServletRequest request, HttpServletResponse response)
    // 	throws ServletException, IOException
    // {
    // }
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
    	throws ServletException, IOException
    {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n" +
		    "    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
	out.println("<html xmlns = \"http://www.w3.org/1999/xhtml \">");
	out.println( "<head>" );
	out.println( "<title>Primo esempio di servlet con DELETE</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con DELETE!</h1>" );
	out.println( "</body>" );
	out.println( "</html>" );

	out.close();
    }

    // Non e' possibile invocarlo, bisognerebbe modificare super.service...
    protected void doOther(HttpServletRequest request, HttpServletResponse response)
    	throws ServletException, IOException
    {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\n" +
		    "    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">");
	out.println("<html xmlns = \"http://www.w3.org/1999/xhtml \">");
	out.println( "<head>" );
	out.println( "<title>Primo esempio di servlet con OTHER</title>" );
	out.println( "</head>" );
	out.println( "<body>" );
	out.println( "<h1>Benvenuto con OTHER!</h1>" );
	out.println( "</body>" );
	out.println( "</html>" );

	out.close();
    }
}
