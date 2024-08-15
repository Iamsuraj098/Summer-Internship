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
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Component/Header.jsp"%>
	<ul class="nav nav-tabs pt-1 bg-body-secondary fs-5" id="myTab"
		role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="doctor-tab" data-bs-toggle="tab"
				data-bs-target="#doctor" type="button" role="tab"
				aria-controls="doctor" aria-selected="true">Doctor</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="meeting-tab" data-bs-toggle="tab"
				data-bs-target="#meeting" type="button" role="tab"
				aria-controls="meeting" aria-selected="false">Meeting</button>
		</li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div class="tab-pane active gap-20" id="doctor" role="tabpanel"
			aria-labelledby="doctor-tab" tabindex="0">
			<div class="container mt-2">
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
				<form class="form-control form-control-sm border-dark" action="care"
					method="post">
					<div class="form-group">
						<label for="name" class="fs-5">Doctor Name</label> <input
							class="form-control form-control-sm fs-5" type="text" id="name"
							placeholder="Enter Doctor's name" name="name"
							aria-label=".form-control-sm example" required>
					</div>
					<div class="form-group">
						<label for="breed" class="fs-5">Qualifications</label> <input
							class="form-control form-control-sm fs-5" type="text" id="breed"
							placeholder="Enter Qualifications" name="quali"
							aria-label=".form-control-sm example" required>
					</div>
					<div class="form-group">
						<label for="age" class="fs-5">Fees</label> <input
							class="form-control form-control-sm fs-5" type="number" id="exp"
							placeholder="Enter Experience" name="fees"
							aria-label=".form-control-sm example" required>
					</div>
					<button type="submit" class="btn btn-primary m-1 fs-5">Add</button>
				</form>
			</div>
		</div>

		<div class="tab-pane m-2" id="meeting" role="tabpanel"
			aria-labelledby="meeting-tab" tabindex="0">
			<table class="table table-primary table-hover">
				<thead>
					<tr>
						<th scope="col">S.No.</th>
						<th scope="col">Doctor</th>
						<th scope="col">Qualification</th>
						<th scope="col">Fees</th>
						<th scope="col">User</th>
						<th scope="col">Timing</th>
						<th scope="col">Address</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
					<%
					ArrayList<ArrayList<String>> details = (ArrayList<ArrayList<String>>) request.getAttribute("details");
					if (details != null && !details.isEmpty()) {
						for (int i = 0; i < details.size(); i++) {
							ArrayList<String> data = details.get(i);
					%>
					<tr>
						<th scope="row"><%=i + 1%></th>
						<td><%=data.get(0)%></td>
						<td><%=data.get(1)%></td>
						<td><%=data.get(2)%></td>
						<td><%=data.get(3)%></td>
						<td><%=data.get(4)%></td>
						<td><%=data.get(5)%></td>
						<td><%=data.get(6)%></td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="9" class="text-center">No data available</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<form action="AdminDocDetails" method="post"
				class="d-flex flex-column align-items-center m-1">
				<button type="submit" class="btn btn-primary">Refresh</button>
			</form>
		</div>
	</div>
</body>
</html>
