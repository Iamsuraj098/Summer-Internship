<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.makeup:hover {
	background-color: rgb(159, 159, 159);
}

.makeup2:hover {
	border-color: black;
	cursor: pointer;
}
</style>
<body>
	<div class="container-fluid p-2 border-bottom w-100">
		<header class="d-flex flex-wrap justify-content-around">
			<a href="http://localhost:8080/AdoptEase/Admin/Admin.jsp"
				class="d-flex align-items-center me-md-auto text-dark text-decoration-none">
				<span class="fs-3">AdoptEase</span>
			</a>
			<ul class="nav nav-pills">
				<li class="nav-item fs-4"><a
					href="http://localhost:8080/AdoptEase/Admin/pet/pet.jsp"
					class="nav-link makeup" aria-current="page">Pet</a></li>
				<li class="nav-item fs-4"><a
					href="http://localhost:8080/AdoptEase/Admin/care/care.jsp"
					class="nav-link makeup">Care</a></li>
				<li class="nav-item fs-4"><a
					href="http://localhost:8080/AdoptEase/Admin/product/product.jsp"
					class="nav-link makeup">Product</a></li>
				<li class="nav-item fs-4"><a href="#" class="nav-link makeup">Account</a></li>
			</ul>
		</header>
	</div>
</body>
</html>