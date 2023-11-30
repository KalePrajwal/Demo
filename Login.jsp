<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Objects"%>
<%@ page import="java.util.Optional"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Jobs</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="Login.css">

<style>
.form {
	position: relative;
}

.form-label {
	position: absolute;
	top: 0.7rem;
	left: 1.4rem;
	transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms
		ease-in;
}

.form-control:focus ~.form-label, .form-control:not(:placeholder-shown).form-control:not(:focus)
        ~.form-label {
	top: -0.8rem;
	left: 0.6rem;
	font-size: 15px;
	background-color: whitesmoke;
}

body {
	margin: 0;
	height: 0;
	background-size: cover;
	background-position: center;
	font-family: sans-serif;
	background-image: url('C:\\Users\\prajwal.kale\\Downloads\\uk.jpg');
}

.loginbox {
	width: 400px;
	height: 380px;
	background-color: whitesmoke;
	border-radius: 10px;
	box-shadow: 1px 1px 1px 1px gray;
	top: 20%;
	left: 38%;
	position: absolute;
	transform: translate(-50, -50);
	box-sizing: border-box;
}

.submit input[type="submit"] {
	width: 300px;
	border-radius: 30px;
}

.h1 {
	top: 8%;
	left: 26%;
	position: absolute;
}

#prj {
	padding: 50px 50px;
}

.img {
	position: absolute;
	top: -120px;
	left: 150px;
	border-radius: 50%;
	height: 120px;
	width: 100px;
}

.text-success {
	color: red;
}

.icon-list {
	list-style-type: none;
	padding: 0;
	text-align: center;
}
</style>
<script>
	function clearMessage() {
		setTimeout(function() {
			var messageElement = document.getElementById('message');
			if (messageElement) {
				messageElement.innerHTML = '';
			}
		}, 3000);
	}
	window.onload = clearMessage;
</script>
</head>
<body>
	<div class="body">
		<div id="prj" class="loginbox">
			<img src="user.jpg" class="img">
			<form action="login" method="post">
				<h1 class="h1">Login Here</h1>
				<br> <br>
				<div class="icon-list">
					<c:if test="${not empty message}">
						<h5 id="message" class="text-danger">${message}</h5>
						<c:remove var="message" />
					</c:if>
				</div>

				<br>
				<div class="form">
					<i class="fa fa.user"> </i> <input type="email"
						style="width: 300px; height: 40px;" name="useremail"
						placeholder=" " autocomplete="off" class="form-control" required>
					<label class="form-label"> Enter User Email </label>
				</div>
				<br>
				<div class="form">
					<input type="password" style="width: 300px; height: 40px;"
						name="password" placeholder=" " autocomplete="off"
						class="form-control" required> <label class="form-label">Enter
						Password </label>
				</div>
				<br>
				<div class="submit">
					<input type="submit" value="Sign In" class="btn btn-primary">
				</div>

				<p class="small fw-bold mt-2 pt-1 mb-0">
					Don't have an account? <a href="Registration" class="link-primary">Register</a>
				</p>
				<br>
			</form>
		</div>
	</div>
</body>
</html>