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
	<div class="container-fluid bg-info w-75">
		<h1 class="text-center">Registration Page</h1>
		<div class="row">
			<form action="register" method="post">
				<div class="mb-3">
					<label class="form-label">Student Id</label> <input type="text"
						class="form-control" name="sid">
				</div>
				<div class="mb-3">
					<label class="form-label">Student Name</label> <input type="text"
						class="form-control" name="name">
				</div>
				<div class="mb-3">
					<label class="form-label">Student City</label> <input type="text"
						class="form-control" name="city">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<input type="hidden" id="status" value=<%=request.getAttribute("status")%>>
<script type="text/javascript">
	if (status.value == "success") {
		alert("Successfully added");
	}else{
		alert("Not Added");
	}
</script>
</body>
</html>








