<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Document</title>
</head>

<body style="overflow: hidden; background-color: rgb(227, 227, 227);">
	<div class="container-fluid m-2">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="col-sm-4">
				<div class="card bg-dark text-white">
					<div class="card bg-dark m-1">
						<h5 class="card-title">AdoptEase</h5>
						<p class="card-text">Adopt a new best friend and give a
							forever home to a loving pet today! 🐾❤️</p>
					</div>
					<img src="../image/img.png" class="card-img" alt="image">
					<p class="card-text m-1">God’s Love, Reflected in Every
						Creature.</p>
				</div>
			</div>
			<div
				class="col-sm-8 d-flex justify-content-center align-items-center rounded">
				<div class="border rounded rounded-5 w-75"
					style="background-color: rgb(179, 179, 179);">
					<form class="p-4 w-100" method="Post" id="register">
						<div class="row mb-1 d-flex flex-column">
							<label for="gender" class="col-sm-2 col-form-label fs-5">Role</label>
							<div class="col-sm-10">
								<select class="form-control form-control-sm fs-5 w-100"
									name="role" id="role" required>
									<option class="form-control form-control-sm fs-5">Select</option>
									<option class="form-control form-control-sm fs-5">Admin</option>
									<option class="form-control form-control-sm fs-5">User</option>
								</select>
							</div>
						</div>
						<div class="row mb-1 d-flex flex-column">
							<label for="inputEmail3" class="col-sm-2 col-form-label fs-5">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-sm fs-5"
									id="inputEmail3" name="name" required>
							</div>
						</div>
						<div class="row mb-1 d-flex flex-column">
							<label for="inputEmail3" class="col-sm-2 col-form-label fs-5">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control form-control-sm fs-5"
									id="inputEmail3" name="email" required>
							</div>
						</div>
						<div class="row mb-1 d-flex flex-column">
							<label for="inputEmail3" class="col-sm-2 col-form-label fs-5">Address</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-sm fs-5"
									id="inputEmail3" name="address" required>
							</div>
						</div>
						<div class="row mb-1 d-flex flex-column">
							<label for="inputPassword3" class="col-sm-2 col-form-label fs-5">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control fs-5"
									id="inputPassword3" name="password" required>
							</div>
						</div>
						<button type="submit" class="mt-2 btn btn-primary btn-center fs-5"
							onclick="check()">Create</button>
						<div class="d-flex justify-content-end w-75">
							<p class="fs-7">Already have account?</p>
							<a href="http://localhost:8081/AdoptEase/Login/Login.jsp"
								class="fs-7">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	
		function check() {
			var x = document.getElementById("role").value;
			if (x == "Select" || x == "")
				alert("Please select a role");
			else
				document.getElementById("register").action = "register";
		}
	</script>
</body>

</html>