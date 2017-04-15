package com.restful2017;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class DemoServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException
	{
		res.setContentType("text/html");//setting the content type
		PrintWriter pw=res.getWriter();//get the stream to write the data

//writing html in the stream
		pw.println("<html><body>");
		pw.println("Welcome to demo servlet");
		pw.println("</body></html>");

		pw.close();//closing the stream
	}}