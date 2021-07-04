package in.covid19.project.ctl;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter({"/FilterCtl","/Jsp/AboutUsView.jsp","/Jsp/EmergencyContactView.jsp"})

public class FilterCtl implements Filter {

   
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)request;	
		
		HttpSession session=req.getSession(true);
			
			if(session.getAttribute("mLoginSession")==null){
				res.sendRedirect("http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp");
			}else{
				
				chain.doFilter(request, response);
			}
			 // SESSION
		
			/*				OR
			    
		    if(session.getAttribute("email")!=null){
					session.getAttribute("email");
		  	}else{		  
		 		res.sendRedirect("http://localhost:8080/MarksheetProjectMVC/Jsp/indexLogin.jsp");
		  	}*/
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
