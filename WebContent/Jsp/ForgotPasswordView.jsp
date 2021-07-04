<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot password</title>
</head>
<body>
<%	System.out.println("...........forgotpasworor view.     started..."); %>
<div style=text-align:center>
	<form action="http://localhost:8080/Covid19Project/ForgotPasswordCtl" method="post" class="container">
		    <h1>Change your password</h1>
		
 		   	<label for="memberId"><b>Member Id</b></label> 
		    <input type="text" placeholder="Enter your member Id " name="memberId"  required> <br><br>
		
		    <label for="newPassword"><b>New Password</b></label>
		    <input type="password" placeholder="Enter your Password" name="newPassword"  maxlength="10" required><br><br>
			
			<label for="confirmPassword"><b>Confirm Password</b></label>
		    <input type="password" placeholder="Re-Enter your Password" name="confirmPassword"  maxlength="10" required>
			
		    <br><br>
			<button type="submit">Change</button>
						
	</form>
</div>
<%	System.out.println("...........forgotpasworor view.     ended..."); %>


</body>
</html>