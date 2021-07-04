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
<title>List of patient</title>
		<link rel="stylesheet" href="../Css/style.css">

</head>
<body >	<%System.out.println("---------listView Started-------------");%>
		
			<jsp:include page="ForOtherHeaderView.jsp"></jsp:include>

	<div align='center'>
		<table style= cellpadding:3px cellspacing=2px border="2" width=80% >
	          	<tr>
	          		<th style=background-color:white colspan="10px" align='center' cellpadding="3px">
	          					<span style=color:blue;align:center;></span><b>List of Patient</b></th>
	          	</tr>
	            <tr style=color:red;celspacing:2px;background-color:#f3f3f3>  
	           		<td>Patient Id</td>
					<td>First Name</td>
					<td>Last Name</td>
					<td>Sample</td>
				</tr>
 	<%   ArrayList<AllDTO> al1 = ListOfPatientModel.listOfPatient();//it is a direct retrivel not by giving input        /////////////-->
			
 				for(AllDTO dto:al1){
		     	 	long pId 			= dto.getPatientId();
		     	  	String fName 		=   dto.getFirstName();
		     	  	String lName 		=  dto.getLastName();
		     	   	String sample 		=   dto.getSample();                	   	
 	%> 	     		              
	             <tr>   
                     <td><%=pId %></td>
                     <td><%=fName%></td>
            		 <td><%=lName%></td>
                     <td><%=sample %></td>
		       	</tr>
			<%} %>
		</table>
	</div>
	<%System.out.println("-----listView ended-----------------");%>
</body>
</html>