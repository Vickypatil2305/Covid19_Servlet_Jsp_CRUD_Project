package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.model.LoginModel;

@WebServlet("/MedicalMemberLoginCtl")
public class MedicalMemberLoginCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("---------MemberLoginCtl Started-------------");
		
//		String mId=request.getParameter("memberId");
//		long memberId=Integer.parseInt(mId);
//					OR			
		long memberId=Long.parseLong(request.getParameter("memberId"));	
		String password=request.getParameter("password");
		String rememberMe=request.getParameter("remember");
		
		AllDTO dto=new AllDTO();
				dto.setMemberId(memberId);
				dto.setPassword(password);
				
		int validation=LoginModel.memberLogin(dto);
		System.out.println("vailidation is "+validation);			
				
			 if(validation==1){		// if both equal
					
					//cookie
						if("on".equals(rememberMe)){
							String memberId111=String.valueOf(memberId);
		
							Cookie c1=new Cookie("mIdCtl",memberId111);
							Cookie c2=new Cookie("passCtl",password);
							c1.setMaxAge(60*180);
							c2.setMaxAge(60*180);
							response.addCookie(c1);
							response.addCookie(c2);	
						}
					
					//session
						HttpSession session=request.getSession(true);							 
						session.setAttribute("mLoginSession", memberId);						
					
						
					//System.out.println("logic for loginsearch = " + request.getParameter("url"));
					//System.out.println(  !"null".equalsIgnoreCase(request.getParameter("url")));
					//System.out.println("  ".equalsIgnoreCase(request.getParameter("url")));
						if("null".equalsIgnoreCase(request.getParameter("url")) || "  ".equalsIgnoreCase(request.getParameter("url"))){
							response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/MemberAddPatientView.jsp");
						}else{
							response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/SearchPatientView.jsp");
						}
	
			}else if(validation==2){
				request.setAttribute("wrongMemberId", "invalid member id");
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/MedicalMemberLoginView.jsp");
				rd.forward(request, response);
				
			}else if(validation==3){
				request.setAttribute("wrongPassword", "invalid password");
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/MedicalMemberLoginView.jsp");
				rd.forward(request, response);		
			}
			 //if validation is 0	
			else{
				System.out.println("flag is in else");
				/*request.setAttribute("wrongUser", "No member found");
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/MedicalMemberLoginView.jsp");
				rd.forward(request, response);
				*/
				response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp");
			}

	System.out.println("---------MemberLoginCtl ended-------------");

	}	
}