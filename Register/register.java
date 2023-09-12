package com.tejas;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
@WebServlet("/reg")

/**
 * Servlet implementation class registerr
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		
		
		
	}
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String myname= request.getParameter("name");
			String myemail= request.getParameter("email");
			String mypass= request.getParameter("pass");
			String mygender= request.getParameter("gender");
			String mycity= request.getParameter("city");
			PrintWriter out=response.getWriter();
			
			
			try 
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
				  PreparedStatement ps = con.prepareStatement("INSERT INTO regvalue (name, email, password, gender, city) VALUES (?, ?, ?, ?, ?)");

				ps.setString(1, myname);
				ps.setString(2, myemail);
				ps.setString(3, mypass);
				ps.setString(4, mygender);
				ps.setString(5, mycity);
				int count = ps.executeUpdate();
		
				 response.setContentType("text/html");
		            RequestDispatcher rd = request.getRequestDispatcher("/reg.jsp");
		            rd.include(request, response);
				}
			catch(Exception e)
			{
					
					response.setContentType("text/html");
					RequestDispatcher rd=request.getRequestDispatcher("/reg.jsp");
					rd.include(request,response);
					out.print("FAILED :"+e.getMessage());
					
				}
	    }

}