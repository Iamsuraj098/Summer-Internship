<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid bg-danger w-75">
		<h1 class="text-center">Login Page</h1>
		<div class="row">
			<form action="register" method="post">
				<div class="mb-3">
					<label class="form-label">User Name</label> <input type="text"
						class="form-control" name="sid">
				</div>
				<div class="mb-3">
					<label class="form-label">Image</label>			
					<input type="file" class="form-control" placeholder="Enter the image">
					
				</div>
				<div class="mb-3">
					<label class="form-label">Password</label> <input type="text"
						class="form-control" name="name">
				</div>
				<button type="Submit" class="btn btn-secondary">Login</button>
			</form>
		</div>
	</div>
</body>
</html>








