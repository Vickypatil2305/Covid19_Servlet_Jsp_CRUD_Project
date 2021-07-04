<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page errorPage="http://localhost:8080/Covid19Project/Jsp/ErrorPageView.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Login</title>
		<link rel="stylesheet" href="Css/style.css">
</head>
<body>
<%System.out.println("---------MemberLoginView Started-------------");%>
		
			<jsp:include page="BothLoginHeaderView.jsp"></jsp:include>
	
	<!--RequstDispatcher coming from ForgotPasswordCtl   -->
			<%String changePassword=(String)request.getAttribute("changePassword");
				if(changePassword!=null){%>
					<%=changePassword %>
			<%	} %>
			
			
	<%//for opening one login at a time
	if(session.getAttribute("lLoginSession")!=null){ 
			response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/NoAccessPageView.jsp");
	}else{ %>
			<%//for getting cookie
				String mIdCookie="";			//add this variable in value attribute in input form	
				String passCookie="";			//"" is put coz null should not reflect in input
					Cookie cookie1[] =request.getCookies();
						for(Cookie c:cookie1){						//it will iterate twice
							if("mIdCtl" .equalsIgnoreCase(c.getName())){ // mId from controller
									mIdCookie=c.getValue();				//adding this in value   is important to reflect on view page.
							}else if("passCtl" .equalsIgnoreCase(c.getName())){
								passCookie=c.getValue();
							}
						}
				%>
		
		<div class="bg-img">
		  <form action="http://localhost:8080/Covid19Project/MedicalMemberLoginCtl" method="post" class="container">
		    <h1>Member Login</h1>
			
			
			
			<%--for search url --%>
			
 	<input type="hidden" value="<%=(String)request.getAttribute("url")%>" name="url">
		  
		  
		    
		    <label for="memberId"><b>Member Id</b></label>
		    <input type="text" placeholder="Enter your Id no" name="memberId" value="<%=mIdCookie %>" required> 
					<% String wrongMid=(String)request.getAttribute("wrongMemberId");
										//From RequestDiapatcher
					if(wrongMid !=null){%>	
								<tr>
									<td></td>
									<td><font color="red" size=2px ><%=wrongMid %></font></td>
								</tr>	
					<%}%>	
			
		
		    <label for="password"><b>Password</b></label>
		    <input type="password" placeholder="Enter your Password" name="password" value="<%=passCookie %>" maxlength="8" required>
		 			<% String wrongPass=(String)request.getAttribute("wrongPassword");
										//From RequestDiapatcher
					if(wrongPass !=null){%>	
								<tr>
									<td></td>
									<td><font color="red" size=2px ><%=wrongPass %></font></td>
								</tr>	
					<%}%>	
			 <input type="checkbox"  name="remember" >
			 <label ><b>Remember me</b></label> 
			    
			<button type="submit" class="btn">Login</button><br>
			<input  type="reset" value="Reset">
			
			<div style=text-align:left><a href="http://localhost:8080/Covid19Project/Jsp/NewUserRegistrationView.jsp"><b>New User</b></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				<a href="http://localhost:8080/Covid19Project/Jsp/ForgotPasswordView.jsp"><b>forgot password</b></a></div>				
			</div>
		    
		    <h5 style=color:green;text-align:center>Stay at home,Stay safe.</h5>
		  
		  </form>
		</div>
<%}//session else  %>

<%-- 		<%System.out.println("-------MemberLoginView ended-----------------"); --%>
// 		System.out.println(".................................................................................");
<%-- 		%> --%>
		
</body>
</html>