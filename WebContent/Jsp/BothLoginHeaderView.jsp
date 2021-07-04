<%@page import="in.covid19.project.model.LoginModel"%>
<%@page import="in.covid19.project.dto.AllDTO"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginHeaderView</title>
	<link rel="stylesheet" href="../Css/style.css">
	<!-- for icons in nevbar -->
 	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<font size="3" color="orange"><p align="right"><%= (new java.util.Date()).toLocaleString()%></p></font>



<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Covid-19</a>
    </div><br><br>
		    <ul class="nav navbar-nav">

		
			  <li><a href="http://localhost:8080/Covid19Project/Jsp/MedicalMemberLoginView.jsp"><span class="fa fa-unlock-alt"></span>Login Member</a></li>	      
			  <li><a href="http://localhost:8080/Covid19Project/Jsp/LabLoginView.jsp"><span class="fa fa-unlock-alt"></span>			Login Lab</a></li>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/AboutUsView.jsp"><span clas="fa fa-envelope"></span>	About us</a></li>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/EmergencyContactView.jsp"><span class="fa fa-phone"></span>Emergency No</a></li>
		      <li><a href="http://localhost:8080/Covid19Project/Jsp/PrecautionView.jsp"><span class="fa fa-address-book"></span>		Precautions</a></li>
			 <li><a href="http://localhost:8080/Covid19Project/Jsp/View.jsp"><span clas="fa fa-phone"></span>	Facebook</a></li>
			 <li><a href="http://localhost:8080/Covid19Project/Jsp/View.jsp"><span clas="fa fa-phone"></span>	Instagram</a></li>
			
		    </ul>
  </div>
</nav>
  
</body>
</html>