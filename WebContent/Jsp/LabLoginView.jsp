<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lab login</title>
	<link rel="stylesheet" href="Css/style.css">
</head>
<body>
<%System.out.println("---------LabLoginView Started-------------");%>
<!-- nevbar -->
<%@  include file="BothLoginHeaderView.jsp" %>
			
<%//for opening one login at a time
	if(	session.getAttribute("mLoginSession")!=null){
		response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/NoAccessPageView.jsp");
	}else{%>			
		<%//for getting cookie
				String lIdCookie="";				//add this variable in value attribute in input form	
				String passCookie="";
					Cookie cookie1[] =request.getCookies();
						for(Cookie c:cookie1){						
							if("lCookieCtl" .equalsIgnoreCase(c.getName())){
									lIdCookie=c.getValue();				
							}else if("pCookieCtl" .equalsIgnoreCase(c.getName())){
								passCookie=c.getValue();
							}
						}
		%>
		
		<div class="bg-img">
		  <form action="http://localhost:8080/Covid19Project/LabLoginCtl" method="post" class="container">
		    <h1>Lab Login</h1>
		
		    <label for="labId"><b>Lab Id</b></label>
		    <input type="text" placeholder="Enter your Id no" name="labId" value="<%=lIdCookie %>" required> 
		
		    <label for="password"><b>Password</b></label>
		    <input type="password" placeholder="Enter your Password" name="password" value="<%=passCookie %>" maxlength="8" required>
			
			 <input type="checkbox"  name="remember" >
			 <label ><b>Remember me</b></label>
			 <br><br>
			 <span class="fa fa-refresh fa-spin fa-3x"></span>   <!-- taken from  "font awesome" -->
			<button type="submit">Login</button>
			<div style=text-align:right><a href="http://localhost:8080/Covid19Project/Jsp/NewUserRegistrationView.jsp"><b>New User</b></a></div>
		    <h5 style=color:green;text-align:center>Stay at home,Stay safe.</h5>
		  
		  </form>
		</div>
<%}//for else of session %>

<%System.out.println("------Lab-LoginView ended-----------------");%>

</body>
</html>