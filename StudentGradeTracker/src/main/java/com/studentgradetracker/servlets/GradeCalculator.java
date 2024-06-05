package com.studentgradetracker.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.mysql.cj.Session;

@WebServlet("/gradeTracker")
public class GradeCalculator  extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
	 String studentName=req.getParameter("name");
	 String studentCollege=req.getParameter("college");
	 double english=Double.parseDouble(req.getParameter("english"));
	 double mil=Double.parseDouble(req.getParameter("odia"));
	 double physics=Double.parseDouble(req.getParameter("physics"));
	 double chemistry=Double.parseDouble(req.getParameter("chemistry"));
	 double mathematics=Double.parseDouble(req.getParameter("mathematics"));
	 double it=Double.parseDouble(req.getParameter("It"));
	 
	 double totalMark=(english+mil+physics+chemistry+mathematics+it);
	 double totalPercentage=(totalMark/600)*100;
	 char grade='F';
	 String gradeQuote="";
	 
	 if((totalPercentage >= 85.00 )&&(totalPercentage <= 90.00) )
	 {
	    grade='A';
	    gradeQuote="Grade "+grade+" with distinction.";
	 }
	 else if((totalPercentage >= 75.00 )&&(totalPercentage <= 85.00) )
	 {
	    grade='B';
	    gradeQuote="Grade "+grade+" without distinction.";
	 }
	 else if((totalPercentage >= 65.00 )&&(totalPercentage <= 75.00) )
	 {
	    grade='C';
	    gradeQuote="Grade "+grade+" without distinction.";
	 }
	 else if((totalPercentage >= 55.00 )&&(totalPercentage <= 65.00) )
	 {
	    grade='D';
	    gradeQuote="Grade "+grade+" without distinction.";
	 }
	 else if((totalPercentage >= 35.00 )&&(totalPercentage <= 55.00) )
	 {
	    grade='E';
	    gradeQuote="Grade "+grade+" without distinction.";
	 }
	 else{
		grade='F';
		gradeQuote="Sorry you are fail because your grade is "+grade;
	}
	 
	 HttpSession session = req.getSession();
	 session.setAttribute("collageName", studentCollege);
	 session.setAttribute("studentName", studentName);
	 session.setAttribute("grade", grade+"");
	 session.setAttribute("gradeDesc", gradeQuote);
	 session.setAttribute("totalMark", totalMark);
	 session.setAttribute("totale", session);
	 
	 Map<String, Double> marks=new HashMap<>();
	 marks.put("english", english);
	 marks.put("odia", mil);
	 marks.put("physics", physics);
	 marks.put("chemistry", chemistry);
	 marks.put("mathematics", mathematics);
	 marks.put("it", it);
	 
	 session.setAttribute("marks", marks);
	 session.setAttribute("totalPercentage", totalPercentage);
	 resp.sendRedirect("finalGrade.jsp");
	 
}

}
