<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User Registration</title>
		 <style>
				body {
				  background-image: url('../img/covid-19ForLab.jpg');
				}
				.info-div{
					width:300px;
					height:450px;
					font-size:20px;
					background-color:#f3f3f3;
					border-radius:20px;
				}
				
		</style>
</head>
<body>		<jsp:include page="ForOtherHeaderView.jsp"></jsp:include>
		
			<h1 style=text-align:center;color:red;>Sign Up</h1><hr><br>
<center>	
	<form action="SignUp" method="post">
			<div class="info-div"><br>			
				<label>FirstName</label>	<input type="text" 		name="firstName" 	placeholder="write your name"><br><br>
				<label>LastName</label>		<input type="text"		name="lastName" 	placeholder="write your lastname"><br><br>
				<label>Email</label>		<input type="email" 	name="email" 		placeholder="write your email id"><br><br>
				<label>Password</label>		<input type="password" 	name="password" 	placeholder="write your password"><br><br>
				
				<label>Male</label> 		<input type="radio"		name="gender" 		value="Male" >
				<label>Female</label>		<input type="radio" 	name="gender" 		value="Female">
				<label>Other</label>		<input type="radio" 	name="gender" 		value="Other" checked ><br><br>
				
				<label>Contact no</label>	<input type="number" 	name="contact" 		placeholder="write your contact no"><br><br>
				
						 <!--<textarea name="messageplaceholder="write your massage"></ textarea>-->
				
											<input type="submit" 	value="Sign Up" ></input><br><br>
			</div>
	</form>										
</center>									
</body>
</html>