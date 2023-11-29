<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-image: url('images/cool.jpg');
	background-color: #00FFFF;
	margin: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	background-size: cover; /* Adjust as needed */
	background-position: center center; /* Adjust as needed */
	background-repeat: no-repeat;
}

section {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

section h2 {
	color: #333;
}

.form-group {
	margin-bottom: 20px;
}

.form-groupemail {
	margin-bottom: 20px;
	text-align: left; /* Align text to the left */
}

.form-groupemail label {
	display: block;
	margin-bottom: 5px;
	color: #555;
}

.form-groupemail input {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	color: #555;
}

.text-success {
	color: red;
}

.form-group input {
	width: 100%;
	padding: 8px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.form-group button {
	background-color: #4caf50;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	border-radius: 4px;
}

.form-group button:hover {
	background-color: #45a049;
}
</style>
<script>
	function clearMessage() {
		setTimeout(function() {
			var messageElement = document.getElementById('message');
			if (messageElement) {
				messageElement.innerHTML = '';
			}
		}, 2000);
	}
	window.onload = clearMessage;
</script>

</head>
<body>
	<section>

		<h2>Login</h2>

		<div class="icon-list">
			<c:if test="${not empty message}">
				<h5 class="text-success">${message}</h5>
				<c:remove var="message" />
			</c:if>
		</div>

		<form action="userlogin" method="post">

			<div class="form-groupemail">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-groupemail">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<button type="submit">Login</button>
				<p>
					Don't have an account? <a href="signup" class="link-info">Register
						here</a>
				</p>
			</div>
		</form>
	</section>
</body>

</html>
