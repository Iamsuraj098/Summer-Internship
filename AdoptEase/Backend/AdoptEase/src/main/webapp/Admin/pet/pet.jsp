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

	<div class="tab-pane fade show active fs-5" id="nav-home" role="tabpanel"
		aria-labelledby="nav-home-tab" tabindex="0">
		<ul class="nav nav-tabs pt-1 bg-body-secondary" id="myTab"
			role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home" type="button" role="tab"
					aria-controls="home" aria-selected="true">Add Pet</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile" type="button" role="tab"
					aria-controls="profile" aria-selected="false">Details</button>
			</li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="home" role="tabpanel"
				aria-labelledby="home-tab" tabindex="0">
				<div class="container mt-2">
					<form class="form-control form-control-sm border-dark">
						<div class="form-group">
							<label for="name">Name</label> <input
								class="form-control form-control-sm" type="text" id="name"
								placeholder="Enter pet's name"
								aria-label=".form-control-sm example">
						</div>
						<div class="form-group">
							<label for="breed">Breed</label> <input
								class="form-control form-control-sm" type="text" id="breed"
								placeholder="Enter Breed's name"
								aria-label=".form-control-sm example">
						</div>
						<div class="form-group">
							<label for="age">Age</label> <input
								class="form-control form-control-sm" type="text" id="age"
								placeholder="Enter age's name"
								aria-label=".form-control-sm example">
						</div>
						<div class="form-group">
							<label for="gender">Gender</label> <select
								class="form-control form-control-sm" id="gender">
								<option>Select</option>
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
						<div class="form-group">
							<label for="color">Color</label> <input
								class="form-control form-control-sm" type="text" id="name"
								placeholder="Enter Pet's Color"
								aria-label=".form-control-sm example">
						</div>
						<div class="form-group m-1">
							<label for="image">Image</label> <input type="file"
								class="form-control-file" id="image">
						</div>
						<div class="form-group">
							<label for="price">Price</label> <input
								class="form-control form-control-sm" type="number" id="price"
								placeholder="Enter pet's price"
								aria-label=".form-control-sm example">
						</div>
						<div class="form-group">
							<label for="availability">Availability</label> <select
								class="form-control form-control-sm" id="availability">
								<option>Select</option>
								<option>Available</option>
								<option>Not Available</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary m-1">Add</button>
					</form>
				</div>
			</div>
			<div class="tab-pane m-2" id="profile" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<table class="table table-primary table-hover">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Age</th>
							<th scope="col">Breed</th>
							<th scope="col">Status</th>
							<th scope="col">Availability</th>
							<th scope="col">Photo</th>
							<th scope="col">Price</th>
							<th scope="col">Buyer</th>
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
							<td>@twitter</td>
							<td>@twitter</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>