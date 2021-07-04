package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginFromSearch")
public class LoginFromSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
         
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(".............LoginFromSearchCTL started..................");
		
		request.setAttribute("url", "http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/Jsp/MedicalMemberLoginView.jsp");
						rd.forward(request, response);
	
						
						
		System.out.println(".............LoginFromSearchCTL ended..................");

	}
}
