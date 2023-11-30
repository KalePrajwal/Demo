<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.icon-list {
	list-style-type: none;
	padding: 0;
	text-align: center;
}

.fa-sharp fa-solid fa-trash {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<br>
		<h2 class="display-4">User List....</h2>
		<br>
		<table class="table table-bordered table-hover">
			<tr style="background-color: maroon; color: aliceblue;">
				<th class="icon-list">UserID</th>
				<th class="icon-list">User Name</th>
				<th class="icon-list">User Email</th>
				<th class="icon-list">City</th>
				<th class="icon-list">Mobile No</th>
				<th class="icon-list">Gender</th>
				<th class="icon-list">Edit</th>
				<th class="icon-list">Delete</th>

			</tr>

			<c:forEach items="${userlist}" var="jb">
				<tr>
					<td class="icon-list">${jb.userid}</td>
					<td class="icon-list">${jb.usernm}</td>
					<td class="icon-list">${jb.useremail}</td>
					<td class="icon-list">${jb.usercity}</td>
					<td class="icon-list">${jb.usermob}</td>
					<td class="icon-list">${jb.gender}</td>


					<td class="icon-list"><a href="update/${jb.userid}"> <i
							class="fa-sharp fa-solid fa-pen-to-square"></i></a></td>

					<td class="icon-list"><a href="delete/${jb.userid}"> <i
							class="fa-solid fa-trash-can text-danger"></i></a></td>

				</tr>
			</c:forEach>


		</table>
	</div>

	</div>

</body>
</html>