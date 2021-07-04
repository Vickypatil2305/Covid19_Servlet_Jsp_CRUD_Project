<%@page import="java.io.ObjectInputStream.GetField"%>
<%@page import="in.covid19.project.model.ListOfPatientModel"%>
<%@page import="in.covid19.project.dto.AllDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Report</title>
		<link rel="stylesheet" href="../Css/stylesheet.css">
		<style type="text/css">
			.bg-img {
  /* The image used */
  background-image: url("../img/background1.jpg");

  min-height: 500px;
			
		</style>
</head>
<body class="bg-img">
		<%System.out.println("--------UpdateView Started-------------");%>
		
			<jsp:include page="ForOtherHeaderView.jsp"></jsp:include>

		<%if(session.getAttribute("lLoginSession")!=null){
				session.getAttribute("labId");
				System.out.println("session is working in 'if'");
		}else{
			response.sendRedirect("http://localhost:8080/Covid19Project/Jsp/LabLoginView.jsp");
		}%>
		
		<% //RequestDiapatcher
			String report=(String)request.getAttribute("report");
				if(report!=null){
		%>			<h3 style=color:green;text-align:center;><%=report %></h3>
		<%} %>

<div >
  <form action="http://localhost:8080/Covid19Project/UpdateReportCtl"  class="container" id="sampleform">
    <h2>Update Report</h2>

    <label for="patientId"><b>Patient Id</b></label>
    <input type="text" placeholder="Enter your Id no" name="patientId"  required> 
    
	<lable>Result</lable>
		<select id="sample"  name="sample" form="sampleform">
		  <option value="positive">Positive</option>
		  <option value="negetive">Negative</option>
		  <option value="foundNothing">Found nothing</option>
		</select>
		
		<button type="submit" class="btn">Update</button><br>
  </form>	
</div>

	<%System.out.println("------UpdateView ended-----------------");
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////
		System.out.println("------ListOfPatient started-----------------");
	%>
	
	<div align='center'>
		<table style= cellpadding:3px cellspacing=2px border="2" width=80% >
	          	<tr>
	          		<th style=background-color:white;text-align:center colspan="10px" cellpadding="3px">
	          					<span style=color:blue;align:center;></span><b>List of Patient</b></th>
	          	</tr>
	            <tr style=color:red;celspacing:2px;background-color:#f3f3f3>  
	           		<td>Patient Id</td>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Address</td>
					<td>Mobile No</td>
					<td>Sample</td>
					<td>Sample Id</td>
				</tr>
 	<%   ArrayList<AllDTO> al1 = ListOfPatientModel.listOfPatient();//it is a direct retrivel not by giving input        /////////////-->
			
 				for(AllDTO dto:al1){
		     	 	long pId 			= dto.getPatientId();
		     	  	String fName 		=   dto.getFirstName();
		     	  	String lName 		=  dto.getLastName();
		     	   	String addr 		=   dto.getAddress();
		     	   	long mNo			=  dto.getMobileNo();
		     	  	String sample 		=   dto.getSample();                	   	
 					long sampleId		=	dto.getSampleId();
 	%> 	     		              
	             <tr>   
                     <td><%=pId %></td>
                     <td><%=fName%></td>
            		 <td><%=lName%></td>
                     <td><%=addr %></td>
                     <td><%=mNo %></td>
                     <td><%=sample %></td>
                     <td><%=sampleId %></td>
		       	</tr>
			<%} %>
		</table>
	</div>
	<%		System.out.println("------ListOfPatient ended-----------------");%>
</body>
</html>