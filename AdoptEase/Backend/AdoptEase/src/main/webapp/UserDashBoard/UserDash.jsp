<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    // Check if the session is new or if the user attribute is not present
    HttpSession session2 = request.getSession(false); // Use false to avoid creating a new session
    if (session2 == null || session2.getAttribute("User") == null) {
        response.sendRedirect("http://localhost:8081/AdoptEase/Registration/Registration.jsp");
        return; // Stop further execution
    }
%>
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
<script src="https://kit.fontawesome.com/7ec38867b1.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="UserDash.css">
<title>Document</title>
</head>

<body>
	<%@ include file="Component/Header.jsp"%>

	<div class="container-fluid w-100">
		<div class="card bg-dark text-white"
			style="width: 100%; height: 87vh;">
			<img
				src="https://images.unsplash.com/photo-1518887499460-71d222eed89d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
				style="width: 100%; height: 87vh;" class="card-img" alt="...">
			<div
				class="card-img-overlay d-flex flex-column justify-content-between align-items-center ">
				<div class="input-group flex-nowrap w-50">
					<span class="input-group-text" id="addon-wrapping"><i
						class="fa-solid fa-magnifying-glass"></i></span> <input type="text"
						class="form-control" placeholder="Search Pet, Product . . . . "
						aria-label="Username" aria-describedby="addon-wrapping">
					<button class="btn btn-secondary">Search</button>
				</div>
				<div class="d-grid gap-2 d-md-block w-100">
					<button class="btn btn-primary" type="button">Labrador
						Retriever</button>
					<button class="btn btn-primary" type="button">German
						Shepherd</button>
					<button class="btn btn-primary" type="button">Golden
						Retriever</button>
					<button class="btn btn-primary" type="button">French
						Bulldog</button>
					<button class="btn btn-primary" type="button">Poodle</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container text-center m-3">
		<div class="row">
			<p class="fw-semibold fs-3">Pets Available for Adoption</p>
			<div class="col">
				<div class="card makeup2 h-75 m-0" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card makeup2 h-75 m-0" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card makeup2 h-75 m-0" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container text-center m-3">
		<div class="row">
			<p class="fw-semibold fs-3">Pets Available for Adoption</p>
			<div class="col">
				<div class="card makeup2 h-75" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card makeup2 h-75" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card makeup2 h-75" style="width: 18rem;">
					<img src="../image/image2.png"
						class="card-img-top img-fluid img-thumbnail h-75" alt="...">
					<div class="card-body p-1">
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid" style="width: 80%;">
		<p class="text-center fs-4 fw-bolder">Pet Caring Tips</p>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed fw-medium" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						Accordion Item #1</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						Placeholder content for this accordion, which is intended to
						demonstrate the
						<code>.accordion-flush</code>
						class. This is the first item's accordion body.
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed fw-medium" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
						aria-expanded="false" aria-controls="flush-collapseTwo">
						Accordion Item #2</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						Placeholder content for this accordion, which is intended to
						demonstrate the
						<code>.accordion-flush</code>
						class. This is the second item's accordion body. Let's imagine
						this being filled with some actual content.
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header">
					<button class="accordion-button collapsed fw-medium" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
						aria-expanded="false" aria-controls="flush-collapseThree">
						Accordion Item #3</button>
				</h2>
				<div id="flush-collapseThree" class="accordion-collapse collapse"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						Placeholder content for this accordion, which is intended to
						demonstrate the
						<code>.accordion-flush</code>
						class. This is the third item's accordion body. Nothing more
						exciting happening here in terms of content, but just filling up
						the space to make it look, at least at first glance, a bit more
						representative of how this would look in a real-world application.
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="Component/footer.jsp"%>

</body>

</html>