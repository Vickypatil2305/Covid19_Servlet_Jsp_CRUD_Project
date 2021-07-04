<%@page import=" javax.servlet.*"%>
<%@page import="in.covid19.project.dto.AllDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Patient</title>
		<link rel="stylesheet" href="../Css/style.css">
</head>
<body><%System.out.println("------------search view started---------"); %>
	
		<jsp:include page="ForOtherHeaderView.jsp"></jsp:include>
			
<%//if Session coming from member Login
if(session.getAttribute("mLoginSession")!=null){
	session.getAttribute("memberId");

	//RequestDispatcher
		String noRecord=(String)request.getAttribute("noRecord");
			if(noRecord!=null){%>
				<h2 style=text-align:center;color:red;><%=noRecord %></h2>
	<%}String details=(String)request.getAttribute("details");
			if(details!=null){%>
				<h2 style=text-align:center;color:green;><%=details %></h2>
	<%
		AllDTO d=(AllDTO)request.getAttribute("dtoDetails");
					long pId=d.getPatientId();
					String fName=d.getFirstName();
					String lName=d.getLastName();
					String address=d.getAddress();
					long mNo=d.getMobileNo();
					String sample=d.getSample();
	%>				
				<div class="bg-img">
			<table   width='400px' height='400px' cellpadding='1' cellspacing='1'  align='center' border='1'>
	     		<thead>
	     			<th colspan="2"><h1 >Patient's Details</h1></th>
	     		</thead>
	     		<tbody> 
	     			<tr><td>Patient Id</td>
						<td><b><%=pId %></b></td>	
					</tr>														
					<tr><td>First Name</td>
						<td><b><%=fName %></b></td>	
					</tr>
					<tr><td>Last Name</td>
						<td><%=lName %></td>
					</tr>	
					<tr><td>Address</td>
						<td><%=address %></td>
					</tr>
					<tr><td>Mobile No</td>
						<td><%=mNo%></td>
					</tr>
					<tr><td>Result</td>
						<td><%=sample%></td>
					</tr>			
					</tr>
					</tbody>
				</table>
			</div>
		<%	}
		}
		//if session not coming from memberlogin
		else if (session.getAttribute("mLoginSession")==null){
				System.out.println("It's in else coz session NOT working  ");
						
				String details=(String)request.getAttribute("details");
				if(details!=null){%>
					<h2 style=text-align:center;color:green;><%=details %></h2>
			
					<%AllDTO d=(AllDTO)request.getAttribute("dtoDetails");
							long pId=d.getPatientId();
							String fName=d.getFirstName();
							String lName=d.getLastName();
							String sample=d.getSample();
					%>				
					<div class="bg-img">
						<table   width='400px' height='400px' cellpadding='1' cellspacing='1'  align='center' border='1'>
				     		<thead>
				     			<th colspan="2"><h1 >Patient's Details</h1></th>
				     		</thead>
				     		<tbody> 
				     			<tr><td>Patient Id</td>
									<td><b><%=pId %></b></td>	
								</tr>														
								<tr><td>First Name</td>
									<td><b><%=fName %></b></td>	
								</tr>
								<tr><td>Last Name</td>
									<td><%=lName %></td>
								</tr>	
								<tr><td>Result</td>
									<td><%=sample%></td>
								</tr>
								</tbody>
							</table>
						
					<div style=text-align:center>		
						<form action="LoginFromSearch">
							<label>Click on LOGIN for other details</label>&nbsp&nbsp
							<input type="submit" value="Login">
						</form>
					</div>
				</div>
				<%	}
		}		
//else{%>	
		
		<div class="bg-img" >
		  <form action="http://localhost:8080/Covid19Project/SearchPatientCtl" class="container">
		    <h1>Search Patient</h1>
		
		    <label for="patientId"><b>Patient Id</b></label>
		    <input type="text" placeholder="Enter Patient Id no" name="patientId"  required> 
		      
			<button type="submit" class="btn">Login</button><br>  
		  </form>
		</div>
<%//} %>	<%System.out.println("----------SearchView ended-----------"); %>
</body>
</html>