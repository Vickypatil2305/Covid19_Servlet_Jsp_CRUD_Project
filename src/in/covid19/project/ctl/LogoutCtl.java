package in.covid19.project.ctl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutCtl")
public class LogoutCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
	PrintWriter out=	response.getWriter();
		
		HttpSession session=request.getSession();
					session.invalidate();
			
			out.println("<h1>Thanks..to visit</h2>");
			out.println("<br>");
			
			out.println("<h1>you are successfully logged out</h2>");
			out.println("<br>");
			out.println("<a href='http://localhost:8080/Covid19Project/Jsp/WelcomeView.jsp'>			welcome</a><br>");
			out.println("<a href='http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp'>	Member Login</a><br><br>");
			out.println("<a href='http://localhost:8080/Covid19Project/Jsp/LabLoginView.jsp'>			Lab Login</a><br>");

			
			//							OR
			
//			response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/WelcomeView.jsp");
}

}
