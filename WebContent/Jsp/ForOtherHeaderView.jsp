<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Covid19Project</title>

	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	<!-- for icons in nevbar -->
 	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body >

<font size="3" color="orange"><p align="right"><%= (new java.util.Date()).toLocaleString()%></p></font>




	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <h1 style=color:green;text-align:center >Covid-19</h1>
	      
	    </div><br><br>
		    <ul class="nav navbar-nav">
			  <li><a href="http://localhost:8080/Covid19Project/Jsp/WelcomeView.jsp">		<span class="fa fa-reply-all"></span>Homepage</a></li>		      	      	      	      
																			<!--from  "form awesome web icons" -->
		
		<%if(session.getAttribute("mLoginSession")!=null){ %>
		      <li ><a href="http://localhost:8080/Covid19Project/Jsp/MemberAddPatientView.jsp"><span class="fa fa-user-plus"></span>Add Details</a></li>
		<%} %>
			  <li><a href="http://localhost:8080/Covid19Project/Jsp/ListOfPatientView.jsp">	<span class="fa fa-calendar	"></span>	Patient List </a></li>			      		      	      
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/SearchPatientView.jsp">	<span class="fa fa-calendar"></span>	Search Patient</a></li>	
		     
		<%if(session.getAttribute("lLoginSession")!=null){ %>     
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/UpdateReportByLabView.jsp"><span class=""></span>Update</a></li>	
		<%} %>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/AboutUsView.jsp">		<span class="fa fa-envelope"></span>	About us</a></li>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/EmergencyContactView.jsp"><span class="fa fa-phone"></span>	Emergency No</a></li>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/PrecautionView.jsp">	<span class="fa fa-address-book"></span>	Precautions</a></li>
			 <li><a href="http://localhost:8080/Covid19Project/Jsp/View.jsp"><span class="fa fa-phone"></span>	Facebook</a></li>
			 <li><a href="http://localhost:8080/Covid19Project/Jsp/View.jsp"><span class="fa fa-user-circle"></span>	Instagram</a></li>
			 
			 <li class="active"><a href="http://localhost:8080/Covid19Project/LogoutCtl">	<span class="fa fa-thumbs-o-up"></span>	Logout</a></li>
		    </ul>
	  </div>
	</nav>
</body>
</html>