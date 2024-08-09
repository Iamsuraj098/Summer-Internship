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
			<a href="http://localhost:8081/AdoptEase/UserDashBoard/UserDash.jsp"
				class="d-flex align-items-center me-md-auto text-dark text-decoration-none">
				<span class="fs-3">AdoptEase</span>
			</a>
			<ul class="nav nav-pills">
				<li class="nav-item fs-4"><a
					href="http://localhost:8081/AdoptEase/UserDashBoard/Adopt/Adopt.jsp"
					class="nav-link makeup" aria-current="page">Adopt</a></li>
				<li class="nav-item fs-4"><a
					href="http://localhost:8081/AdoptEase/UserDashBoard/Care/care.jsp"
					class="nav-link makeup">Care</a></li>
				<li class="nav-item fs-4"><a
					href="http://localhost:8081/AdoptEase/UserDashBoard/Product/product.jsp"
					class="nav-link makeup">Product</a></li>
				<li class="nav-item fs-4"><a href="http://localhost:8081/AdoptEase/UserDashBoard/Account/account.jsp" class="nav-link makeup">Profile</a></li>
			</ul>
		</header>
	</div>
</body>
</html>