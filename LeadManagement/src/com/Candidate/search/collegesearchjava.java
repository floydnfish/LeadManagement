package com.Candidate.search;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class collegesearchjava extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public collegesearchjava()
	{
		super();
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();  
        
        
        String collegeName=request.getParameter("collegeName");
        
        
        HttpSession session=request.getSession();
        
		session.setAttribute("collegeName", collegeName);
        
        
        RequestDispatcher rd=request.getRequestDispatcher("collegeResult.jsp");
        rd.forward(request, response);
        
        out.close();
 }
}
