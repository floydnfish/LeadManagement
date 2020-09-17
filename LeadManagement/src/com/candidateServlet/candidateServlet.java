package com.candidateServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Candidate.bean.Candidate;
import com.candidateDao.CandidateDao;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class candidateServlet extends HttpServlet {
  //  private static final long serialVersionUID = 1 L;
    private CandidateDao candidateDao;

    public void init() {
        candidateDao = new CandidateDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String hrName = request.getParameter("hrName");
        String domain = request.getParameter("domain");
        String dateJoined = request.getParameter("dateJoined");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String adharNo = request.getParameter("adharNo");

        Candidate candidate = new Candidate();
        candidate.setFirstName(firstName);
        candidate.setLastName(lastName);
        candidate.setEmail(email);
        candidate.setHrName(hrName);
        candidate.setDomain(domain);
        candidate.setDateJoined(dateJoined);
        candidate.setContact(contact);
        candidate.setAddress(address);
        candidate.setAdharNo(adharNo);

        try {
            candidateDao.registerCandidate(candidate);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("candidatedetails.jsp");
    }
}
