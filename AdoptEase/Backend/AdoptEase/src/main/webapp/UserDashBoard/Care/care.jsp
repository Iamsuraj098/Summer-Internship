<%@page import="java.util.ArrayList"%>
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
<style>
#selection {
	max-height: 300px; /* Adjust height as needed */
	overflow-y: scroll;
}
</style>
</head>
<body>
	<%@ include file="../Component/Header.jsp"%>

	<h4 class="text-center m-2">Book Care Meetings</h4>
	<form id="form" class="d-flex flex-column align-items-center m-1"
		method="post">
		<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null && !msg.isEmpty()) {
		%>
		<div class="alert alert-info m-1" role="alert">
			<%=msg%>
		</div>
		<h5 class="m-2">Add More</h5>
		<%
		}
		%>
		<div class="card w-75">
			<div class="d-flex flex-column justify-content-start">
				<div
					class="m-1 d-flex flex-column align-item-center  justify-content-start">
					<label for="timing" class="fs-5">Booking timing</label> 
					<input type="datetime-local" class="fs-6 w-75" id="timing" name="timing"
						required>
				</div>
				<div
					class="m-1 d-flex flex-column align-item-center  justify-content-start">
					<label for="address" class="fs-5">Address</label> 
					<input type="text" class="w-75 fs-6" id="address" name="address"
						placeholder="Enter the address" required>
				</div>
				<label for="selection" class="fs-5 m-1">Select Doctor</label>
				<div class="m-1 bg-body-secondary" id="selection">
					<div
						class="card-body d-flex flex-column justify-content-between border border-dark">
						<%
						ArrayList<ArrayList<String>> details = (ArrayList<ArrayList<String>>) request.getAttribute("details");
						if (details != null && !details.isEmpty()) {
							for (int i = 0; i < details.size(); i++) {
								ArrayList<String> data = details.get(i);
						%>
						<div class="fs-5">
							<h5 class="card-title">
								Doctor Name:
								<%=data.get(0)%></h5>
							<p class="card-title">
								Qualifications:
								<%=data.get(1)%></p>
							<p class="card-text">
								Fees:
								<%=data.get(2)%></p>
							<input type="hidden" value="" id="docId" name="docId">
						</div>
						<div class="d-flex justify-content-end align-items-end w-100 fs-4">
							<a href="#" class="btn btn-primary btn0" onclick="selectDoctor('<%=data.get(7)%>')" required>Select</a>
						</div>
						<hr>
						<%
						}
						} else {
						%>
						<p class="text-center w-100">No data available</p>
						<%
						}
						%>
					</div>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary fs-4 m-2"
			onclick="check()">Book</button>
	</form>

		<form action="DocDetails" method="post" class="d-flex flex-column align-items-center m-1">
			<button type="submit" class="btn btn-primary">Refresh</button>
		</form>
	<script>
		var a = true;

		function selectDoctor(docId) {
			document.getElementById("docId").value = docId;
			document.querySelector(".btn0").style.backgroundColor = "green";
			a = false;
		}

		function check() {
			if (a) {
				alert("Please select a doctor");
				return false; // Prevent form submission if not selected
			} else {
				document.getElementById("form").action = "UserCare";
			}

		}
	</script>


</body>
</html>
