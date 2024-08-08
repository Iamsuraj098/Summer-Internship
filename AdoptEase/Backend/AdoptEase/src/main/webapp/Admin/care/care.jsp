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
				<form class="form-control form-control-sm border-dark">
					<div class="form-group">
						<label for="name">Doctor Name</label> <input
							class="form-control form-control-sm" type="text" id="name"
							placeholder="Enter Doctor's name"
							aria-label=".form-control-sm example">
					</div>
					<div class="form-group">
						<label for="breed">Qualifications</label> <input
							class="form-control form-control-sm" type="text" id="breed"
							placeholder="Enter Qualifications"
							aria-label=".form-control-sm example">
					</div>
					<div class="form-group">
						<label for="age">Experience</label> <input
							class="form-control form-control-sm" type="number" id="exp"
							placeholder="Enter Experience"
							aria-label=".form-control-sm example">
					</div>
					<button type="submit" class="btn btn-primary m-1">Add</button>
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
						<th scope="col">User</th>
						<th scope="col">Timing</th>
						<th scope="col">Address</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>@mdo</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
						<td>@fat</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry the Bird</td>
						<td>@twitter</td>
						<td>@twitter</td>
						<td>@twitter</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>