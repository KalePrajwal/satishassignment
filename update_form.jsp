<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>


	<div class="container mt-5">

		<div class="row">

			<div class="col-mt-6 offset-mt-3">

				<h1 class="text-center mb-5">Update Employee details</h1>

				<form action="${pageContext.request.contextPath}/handle-employee" method="post">


					<div class="form-group">
						<label for="exampleInputId">Employee Id</label> <input type="text"
							class="form-control" id="eid" aria-describedby="emailHelp"
							placeholder="Enter Empolyee ID" 
							name="eid"
							value="${employee.eid}">
					</div>
					<div class="form-group">
						<label for="exampleInputName">Employee Name</label> <input
							type="text" class="form-control" id="ename"
							aria-describedby="emailHelp" placeholder="Enter Empolyee Name"
							name="ename"
							value="${employee.ename}">
					</div>
					<div class="form-group">
						<label for="exampleInputCity">Employee city</label> <input
							type="text" class="form-control" id="city"
							aria-describedby="emailHelp" placeholder="Enter Empolyee City"
							name="city"
							value="${employee.city}">
					</div>
					<div class="form-group">
						<label for="exampleInputNumber">Employee Number</label> <input
							type="text" class="form-control" id="enumber"
							aria-describedby="emailHelp"
							placeholder="Enter Empolyee Mobile Number" 
							name="enumber"
							value="${employee.enumber}">
					</div>
					<div class="form-group">
						<label for="exampleInputPincode">Employee Pincode</label> <input
							type="text" class="form-control" id="pincode"
							aria-describedby="emailHelp" placeholder="Enter Empolyee Pincode"
							name="pincode"
							value="${employee.pincode}">
					</div>
					<div class="form-group">
						<label for="exampleInputSalary">Employee Salary</label> <input
							type="text" class="form-control" id="salary"
							aria-describedby="emailHelp" placeholder="Enter Empolyee Salary"
							name="salary"
							value="${employee.salary}">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>

	</div>

</body>
</html>