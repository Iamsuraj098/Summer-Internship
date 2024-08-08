<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>AdoptEase</title>
</head>
<body>
	<%@ include file="../Component/Header.jsp"%>

	<h4 class="text-center m-2">Book Care Meetings</h4>
	<form action="#" class="d-flex flex-column align-items-center m-1">
		<div class="card w-75">
			<div class="d-flex flex-column justify-content-start">
				<div
					class="m-1 d-flex flex-column align-item-center  justify-content-start">
					<label for="timing" class="fs-5">Booking timing</label> <input
						type="datetime-local"  class="fs-6" class="w-75" id="timing" required>
				</div>
				<div
					class="m-1 d-flex flex-column align-item-center  justify-content-start">
					<label for="address" class="fs-5">Address</label> 
					<input type="text" class="w-75"  class="fs-6" id="address" placeholder="Enter the address" required>
				</div>
				<label for="selection" class="fs-5 m-1">Select Doctor</label> 
				<div class="m-1 bg-body-secondary" id="selection" style="overflow-y: scroll;">
					<div
						class="card-body d-flex flex-column justify-content-between border border-dark">
						<div class="fs-5">
							<h5 class="card-title">Doctor Name</h5>
							<p class="card-title">Qualifications:</p>
							<p class="card-title">Contact No.:</p>
							<p class="card-text">Fees:</p>
						</div>
						<div class="d-flex justify-content-end align-items-end w-100 fs-4">
							<a href="#" class="btn btn-primary btn0" onclick="Add()" required>Select</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary fs-4 m-2" onclick="check()">Book
		</button>
	</form>


	<script>
		var a = true;
		function Add() {
			if (a) {
				document.querySelector(".btn0").style.backgroundColor = "green";
				a = false;
			} else {
				document.querySelector(".btn0").style.backgroundColor = "blue";
				a = true;
			}
		}
		function check() {
			if (!a) {
				/*var link = document.createElement("herf");
				link.innerText = ""*/
				alert("Please select");
			}
		}
	</script>


</body>
</html>