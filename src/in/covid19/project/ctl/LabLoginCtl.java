package in.covid19.project.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.model.LoginModel;

@WebServlet("/LabLoginCtl")
public class LabLoginCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String lId=request.getParameter("labId");
			long labId=Integer.parseInt(lId);
					OR*/
		long labId=Integer.parseInt(request.getParameter("labId"));
		String password=request.getParameter("password");
		String rememberMe=request.getParameter("remember");
		
		AllDTO dto=new AllDTO();
			dto.setLabId(labId);
			dto.setPassword(password);
				
		boolean b=LoginModel.labLogin(dto);
			System.out.println(b);
				if(b){	System.out.println("---------if part-------------");
				
				HttpSession session=request.getSession();
					session.setAttribute("lLoginSession", labId);
				
					if("on".equals(rememberMe)){
						String labId1=String.valueOf(labId);
						
						Cookie c1=new Cookie("lCookieCtl",labId1);
						Cookie c2=new Cookie("pCookieCtl", password);
							c1.setMaxAge(60*60);
							c2.setMaxAge(60*60);
						response.addCookie(c1);
						response.addCookie(c2);	
						System.out.println("cookie is working");
					}
					response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/UpdateReportByLabView.jsp");
				//	JOptionPane.showMessageDialog(null,"You'r logged in");

				}else{	System.out.println("---------else part-------------");

					response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/LabLoginView.jsp");
				//	JOptionPane.showMessageDialog(null,"try again");

				}
		
	System.out.println("---------LabLoginCtl ended-------------");
	
	}

}
