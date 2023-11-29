<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

</head>
<body>

	<div class="conatiner mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Employee App</h1>

				<
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">EmpName</th>
							<th scope="col">City</th>
							<th scope="col">MobNumber</th>
							<th scope="col">PinCode</th>
							<th scope="col">Salary</th>
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employees}" var="e">
							<tr class="tablee">
								<th scope="row">${e.eid}</th>
								<td>${e.ename}</td>
								<td>${e.city}</td>
								<td>${e.enumber}</td>
								<td>${e.pincode}</td>
								<td class="font-weight-bold mr-2">&#8377; ${e.salary}</td>

                                	
								<td><a href="delete/${e.eid}"> 
								<div class="container text-left">
								<i class="fa-solid fa-trash-can text-danger"></i>
								</div></a></td>
										
								<td><a href="update/${e.eid}"> 
								<div class="container text-left">
								<i class="fa-solid fa-user-pen"> </i>
								</div></a></td>
										

							</tr>
						</c:forEach>
					</tbody>
				</table>


				<div class="container text-center">
					<a href="${pageContext.request.contextPath }/add-employee"
						class="btn btn-outline-success">Add Employee </a>
				</div>

			</div>

		</div>
	</div>

</body>
</html>