<%@page import="in.covid19.project.model.MemberAddPatientModel"%>
<%@page import="in.covid19.project.dto.AllDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Add Patient</title>
	<link rel="stylesheet" href="../Css/style.css">
	
</head>
<body class="bg-img">
		<%	System.out.println(".................................................................................");
		System.out.println("--------------addpatientView started-------------------"); %>
			<jsp:include page="ForOtherHeaderView.jsp"></jsp:include>

		
		<%// session coming from MemberloginCtl
	if(session.getAttribute("mLoginSession")!=null){		 
			session.getAttribute("memberId");	
				System.out.println("session is working in 'if'");
	}else{
		System.out.println("else of addpatienView");

		response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp");
	} %>
		
		<% //coming from RequestDispacthar
		   String added=(String)request.getAttribute("added");
			   		if(added!=null){%>
			   		<div style=color:green;text-align:center;background-color:#f3f3f3;><h3 ><%=added %></h3>
			   		 	 <a href="http://localhost:8080/Covid19Project/LogoutCtl">Logout</a>
			   		</div>
		  <%} %>
	
		<div class="addPatient-bg-img">
		  <form action="http://localhost:8080/Covid19Project/MemberAddPatientCtl"   class="container" id="sampleform">
		    <h3>Add Patient's Details</h3>
	
			<label for="firstName"><b>First Name</b></label>
		    <input type="text" placeholder="Enter FirstName" name="firstName"  required>
		
		    <label for="lastName"><b>Last Name</b></label>
		    <input type="text" placeholder="Enter LastName" name="lastName" required>
		     
		    <label for="address"><b>Address</b></label>
		    <input type="text" placeholder="Enter Address" name="address" required>
		    
		    <label for="mobileNo"><b>Mobile No</b></label>
		    <input type="text" placeholder="Enter Mobile No" name="mobileNo" required>
			
			
		    <button type="submit" class="btn">Add</button><br>
		    
		    <div style=color:red;text-align:left;background-color:#f3f3f3;>
			   	<a href="http://localhost:8080/Covid19Project/LogoutCtl"><b>Logout</b></a>
			</div>
		 </form>			
	   </div>
		<%System.out.println("--------------addpatientView ended-------------------"); 	
	System.out.println(".................................................................................");%>

</body>
</html>