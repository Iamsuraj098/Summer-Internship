<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="../Component/Header.jsp"%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<%
				HttpSession session2 = request.getSession(false);
				if (session2 != null) {
					ArrayList<String> details = (ArrayList<String>) session2.getAttribute("details");
					if (details != null) {
				%>
				<div class="card">
					<div class="card-header bg-primary text-white">Admin Details</div>
					<div class="card-body">
						<h5 class="card-title">
							Name:
							<%=details.get(1)%></h5>
						<p class="card-text">
							<strong>Email:</strong>
							<%=details.get(0)%><br> <strong>Address:</strong>
							<%=details.get(2)%>
						</p>
					</div>
				</div>
				<%
				} else {
				%>
				<div class="alert alert-danger">Details are not available.</div>
				<%
				}
				} else {
				%>
				<div class="alert alert-danger">Session has expired or is
					invalid.</div>
				<%
				}
				%>

				<div class="mt-4">
					<form action="AdminLogout" method="post">
						<button type="submit" class="btn btn-danger">Logout</button>
					</form>
				</div>
			</div>
		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>
</body>
</html>
