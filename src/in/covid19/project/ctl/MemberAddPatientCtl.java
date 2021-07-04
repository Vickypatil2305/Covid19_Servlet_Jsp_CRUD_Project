package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.model.MemberAddPatientModel;

@WebServlet("/MemberAddPatientCtl")
public class MemberAddPatientCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------MemberAddpatientCtl doGet started-------------------"); 

		//patientId is being taken directly from database into model
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String address=request.getParameter("address");
		String mNo=request.getParameter("mobileNo");
			long mobileNo=Long.parseLong(mNo);
		
		AllDTO dto=new AllDTO();
			//	dto.setPatientId(patientId);
				dto.setFirstName(firstName);
				dto.setLastName(lastName);
				dto.setAddress(address);
				dto.setMobileNo(mobileNo);
					
		boolean flag=MemberAddPatientModel.addPatient(dto);	
					System.out.println(flag);
					long id=MemberAddPatientModel.autoIncrement();
					long	i=id-1;			
			if(flag){
				request.setAttribute("added", "Patient Id is "+i+ "<br> "+" Want to add more");
				RequestDispatcher rd=request.getRequestDispatcher("/Jsp/MemberAddPatientView.jsp");
								rd.forward(request, response);
						
			}else{					
				response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/MemberAddPatientView.jsp");					
			}
							
		System.out.println("--------------MemberAddpatientCtl doGet method ended-------------------"); 	
	}
}
