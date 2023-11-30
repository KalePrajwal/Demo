<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="Registration.css">
<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	font-size: 14px;
	background: #f2f2f2;
}

.container {
	background: white;
	width: 500px;
	padding: 25px;
	margin: 50px auto 0;
	border-top: 5px solid blue;
	box-shadow: 0 0 7px 5px(0, 0, 0, 0.5);
}

.container h2 {
	font-size: 24px;
	line-height: 24px;
	padding: 30px;
	text-align: center;
}

.input-name {
	width: 90%;
	position: relative;
	margin: 20px auto;
}

.lock {
	padding: 8px 11px;
}

.form-control {
	padding: 4px 0 5px 50px;
}

.input-name i {
	position: absolute;
	font-size: 18px;
	color: blue;
	border-right: 1px solid #cccccc;
}
</style>

</head>
<body>
	<div class="container">
		<h2>Change User Details</h2>
		<br> <br>

		<div class="form-container ">

			<form action="${pageContext.request.contextPath}/Create"
				method="post" onsubmit="return validateForm()">


				<div class="input-name">
					<i class="fa fa-user lock"></i> <input type="text" name="usernm"
						placeholder="Enter Full Name" autocomplete="off"
						value="${user.usernm}" class="form-control" required> <br>
				</div>

				<div class="input-name">
					<i class="fa fa-envelope lock"></i> <input type="useremail"
						name="useremail" placeholder="Email ID" value="${user.useremail}"
						class="form-control" required> <br>
				</div>


				<div class="input-name">
					<i class="fa fa-map-marker"></i> <input type="text" name="usercity"
						placeholder="Enter City" value="${user.usercity}"
						class="form-control" required> <br>
				</div>


				<div class="input-name">
					<i class="fa fa-mobile lock"></i> <input type="text" name="usermob"
						placeholder="Mobile NO" autocomplete="off" value="${user.usermob}"
						class="form-control" required> <br>
				</div>


				<div class="input-name">
					<i class="fa fa-lock lock"></i> <input type="password"
						name="password" placeholder="Enter Password"
						value="${user.password}" class="form-control" required>
				</div>


				<div class="input-name">
					<input type="radio" class="radio-button" name="gender" value="Male"
						class="form-control"> <label>Male</label required value="${user.gender}"> <input
						type="radio" class="radio-button" name="gender" value="Female"
						class="form-control"> <label>Female</label required value="${user.gender}">

				</div>
				<div class="input-name">
					<input type="submit" value="Update User" class="btn btn-primary">
				</div>
			</form>

		</div>

	</div>

</body>
</html>