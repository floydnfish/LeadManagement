package com.Candidate.search;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


	public class candidatesearch extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		public candidatesearch()
		{
			super();
		}

	       protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	              response.setContentType("text/html");

	              PrintWriter out = response.getWriter();  
	              
	              
	              String email=request.getParameter("email");
	              String adhar_no=request.getParameter("adhar_no");
	              String contact=request.getParameter("contact");
	              
	              HttpSession session=request.getSession();
	              session.setAttribute("email", email);
	              session.setAttribute("adhar_no", adhar_no);
	              session.setAttribute("contact", contact);
	              
	              RequestDispatcher rd=request.getRequestDispatcher("CandidateResult.jsp");
	              rd.forward(request, response);
	              
	              out.close();
	       }
}