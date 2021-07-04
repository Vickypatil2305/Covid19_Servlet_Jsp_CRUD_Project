package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.model.SearchPatientModel;

@WebServlet("/SearchPatientCtl")
public class SearchPatientCtl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		System.out.println("------------SearchPatient ctl started------------------------");

		String pId=request.getParameter("patientId");
		long patientId=Long.parseLong(pId);

		AllDTO dto=new AllDTO();
			dto.setPatientId(patientId);
				
		AllDTO dto3=SearchPatientModel.searchPatient(dto);
			if(patientId==dto3.getPatientId()){				
				request.setAttribute("details", "Patient details");
				request.setAttribute("dtoDetails", dto3);
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/SearchPatientView.jsp");
									rd.forward(request, response);	
			}else{
				request.setAttribute("noRecord", "No record found");
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/SearchPatientView.jsp");
						rd.forward(request, response);	
			}
				
		System.out.println("------------SearchPatient ctl ended------------------------");
	}
}