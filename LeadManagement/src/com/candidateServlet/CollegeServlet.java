package com.candidateServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Candidate.bean.CollegeBean;
import com.candidateDao.CollegeDao;


@WebServlet("/registercollege")
public class CollegeServlet extends HttpServlet {
	
	private CollegeDao collegeDao;
	
	public void init() {
        collegeDao = new CollegeDao();
    }
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, IOException {

			        String collegeName = request.getParameter("collegeName");
			        String hrName = request.getParameter("hrName");
			        String contact = request.getParameter("contact");
			        String email = request.getParameter("email");
			        

			        CollegeBean collegebean = new CollegeBean();
			        collegebean.setCollegeName(collegeName);
			        collegebean.setHrName(hrName);
			        collegebean.setContact(contact);
			        collegebean.setEmail(email);
			        

			        try {
			            collegeDao.registerCollege(collegebean);
			        } catch (Exception e) {
			            // TODO Auto-generated catch block
			            e.printStackTrace();
			        }

			        response.sendRedirect("collegedetails.jsp");
			    }
			}
	


