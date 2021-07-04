package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.covid19.project.dto.LoginDTO;
import in.covid19.project.model.LoginModel;


@WebServlet("/ForgotPasswordCtl")
public class ForgotPasswordCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("...........forgotpasworor ctl.     started...");
 		
 		long memberId=Long.parseLong(request.getParameter("memberId"));
 		String newPassword=request.getParameter("newPassword");
 		String confirmPassword=request.getParameter("confirmPassword");
 		System.out.println(memberId+",,,,,,,,,,,,"+newPassword+"......................."+confirmPassword);
 		
 		
 		if(newPassword.equalsIgnoreCase( confirmPassword)){
 		//	System.out.println("if ctl");
 			LoginDTO dto=new LoginDTO();
 					dto.setMemberId(memberId);
 					dto.setPassword(newPassword);
					
 		} 		
 		
 		LoginDTO dto = null;
		boolean flag=LoginModel.authenticate(dto  );
 				System.out.println(flag);
 				if(flag){
 					request.setAttribute("changePassword", "<h1 style=color:green;text-align:center;>Password changed succesfully...</h3>");
 					RequestDispatcher rd=request.getRequestDispatcher("/Jsp/MedicalMemberLoginView.jsp");
 									rd.forward(request, response);
 				}
 		
 		
 		System.out.println("...........forgotpasworor  ctl      ended ....");
		}

}
