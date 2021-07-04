package in.covid19.project.ctl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.covid19.project.dto.AllDTO;
import in.covid19.project.model.UpdateReportModel;

@WebServlet("/UpdateReportCtl")
public class UpdateReportCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("------------ctl started------------------------");

		String pId=request.getParameter("patientId");
			long patientId=Long.parseLong(pId);
		String sample=request.getParameter("sample");
		//String sampleId=request.getParameter("sampleId");
				System.out.println(patientId+"............."+ sample +"..............");

		AllDTO dto=new AllDTO();
			dto.setPatientId(patientId);
			dto.setSample(sample);
		//	dto.setSampleId(sampleId);
			
		boolean b=UpdateReportModel.updateReport(dto);
			System.out.println(b);
			if(b){				
				request.setAttribute("report", "Want to update more");
				RequestDispatcher rd=request.getRequestDispatcher("Jsp/UpdateReportByLabView.jsp");
									rd.forward(request, response);	
			}else{
				response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/LabLoginView.jsp");
			}
				
		System.out.println("------------ctl ended------------------------");
	
  	}

}
