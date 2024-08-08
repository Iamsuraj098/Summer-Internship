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
	<nav>
		<div class="nav nav-tabs bg-secondary" id="nav-tab" role="tablist" style="--bs-bg-opacity: .9;">
			<button class="nav-link active fs-5" id="nav-home-tab"
				data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
				role="tab" aria-controls="nav-home" aria-selected="true">Food</button>
			<button class="nav-link fs-5" id="nav-profile-tab" data-bs-toggle="tab"
				data-bs-target="#nav-profile" type="button" role="tab"
				aria-controls="nav-profile" aria-selected="false">Accessories</button>
		</div>
	</nav>
	<div class="tab-content d-flex algin-item-center justify-content-center w-75" id="nav-tabContent">
		<div class="tab-pane fade show active w-75" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab" tabindex="0">

			<div class="card mb-3 w-75">
				<div class="row g-0">
					<div class="col-md-4">
						<img src="../../image/image2.png"
							class="img-fluid rounded-start w-75" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body d-flex flex-column justify-content-between">
							<div class="fs-5">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text m-0 p-0">Age:</p>
								<p class="card-text m-0 p-0 ">Weight:</p>
								<p class="card-text m-0 p-0">Breed:</p>
								<p class="card-text m-0 p-0">Color:</p>
								<p class="card-text m-0 p-0">Price:</p>
								<p class="card-text m-0 p-0">Other Details:</p>
							</div>
							<div
								class="d-flex justify-content-end align-items-end w-100 fs-4">
								<a href="#" class="btn btn-primary btn0" onclick="Add()">Select</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="tab-pane fade" id="nav-profile" role="tabpanel"
			aria-labelledby="nav-profile-tab" tabindex="0">

			<div class="card mb-3 w-75">
				<div class="row g-0">
					<div class="col-md-4">
						<img src="../../image/image2.png"
							class="img-fluid rounded-start w-75" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body d-flex flex-column justify-content-between">
							<div class="fs-5">
								<h5 class="card-title">Dog Name</h5>
								<p class="card-text m-0 p-0">Age:</p>
								<p class="card-text m-0 p-0 ">Weight:</p>
								<p class="card-text m-0 p-0">Breed:</p>
								<p class="card-text m-0 p-0">Color:</p>
								<p class="card-text m-0 p-0">Price:</p>
								<p class="card-text m-0 p-0">Other Details:</p>
							</div>
							<div
								class="d-flex justify-content-end align-items-end w-100 fs-4">
								<a href="#" class="btn btn-primary btn0" onclick="Add()">Select</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>