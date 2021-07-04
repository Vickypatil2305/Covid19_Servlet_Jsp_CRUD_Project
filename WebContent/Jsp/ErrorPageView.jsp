<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page isErrorPage="true" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error page</title>
</head>
<body bgcolor="#f3f3f3">


<h1>First way is try-catch And <span style=color:red> second way</span> of 
    EXCEPTION HANDLING <span style=color:blue> in JSP</span> is Error Page:-</h1><br><br><br>
<div style=text-align:center;>

	<img alt="error" src="../img/error1.png">
<br>
		<h1  styler=color:red;>Sorry!!  ....</h1>
		<p>something went wrong</p>


		<p><font color="red"> <%=exception.getMessage()
		//				OR
		//	exception	//this id implicit object variable(variable which is directly avialble by jsp)
		%></font></p>
	
<!-- 		1. Exception is an object which works in an error page.( can't be in UPPERCASE coz it's an object )
			2.if isErrorPage property is not written here,there will be an error in exception variable coz 
			  isErrorPage property is making it an ERROR PAGE.
			3.Writting isErrorPage property is mendetory if u want to print Exception.
			
	-->
		<a class="btn btn-outline-primary"   href="http://localhost:8080/Covid19Project/Jsp/WelcomeView.jsp">Home Page</a>
		
</div>


</body>
</html>