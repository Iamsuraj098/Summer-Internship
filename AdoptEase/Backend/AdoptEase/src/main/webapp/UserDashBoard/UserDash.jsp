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
	<div class="card bg-dark text-white" style="width: 100%; height: 87vh;">
		<img src="https://images.unsplash.com/photo-1518887499460-71d222eed89d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
			style="width: 100%; height: 87vh;" class="card-img" alt="Happy dogs">
		<div class="card-img-overlay d-flex flex-column justify-content-between align-items-center">
			<div class="input-group flex-nowrap w-50">
				<span class="input-group-text" id="addon-wrapping"><i class="fa-solid fa-magnifying-glass"></i></span>
				<input type="text" class="form-control" placeholder="Search for Pets, Products, and More..." aria-label="Search" aria-describedby="addon-wrapping">
				<button class="btn btn-secondary">Search</button>
			</div>
			<div class="d-grid gap-2 d-md-block w-100 text-center">
				<button class="btn btn-primary mx-2" type="button">Labrador Retriever</button>
				<button class="btn btn-primary mx-2" type="button">German Shepherd</button>
				<button class="btn btn-primary mx-2" type="button">Golden Retriever</button>
				<button class="btn btn-primary mx-2" type="button">French Bulldog</button>
				<button class="btn btn-primary mx-2" type="button">Poodle</button>
			</div>
		</div>
	</div>
</div>

<div class="container text-center my-5">
	<p class="fw-semibold fs-3">Pets Available for Adoption</p>
	<div class="row">
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="Golden Retriever">
				<div class="card-body p-3">
					<h5 class="card-title">Golden Retriever</h5>
					<p class="card-text">A friendly and devoted dog, perfect for families. Golden Retrievers are known for their gentle temperament and intelligence.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="German Shepherd">
				<div class="card-body p-3">
					<h5 class="card-title">German Shepherd</h5>
					<p class="card-text">A loyal and courageous breed, ideal for active owners. German Shepherds are highly trainable and make excellent working dogs.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="Labrador Retriever">
				<div class="card-body p-3">
					<h5 class="card-title">Labrador Retriever</h5>
					<p class="card-text">Labradors are friendly, outgoing, and high-spirited companions who have more than enough affection to go around for a family.</p>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container text-center my-5">
	<p class="fw-semibold fs-3">Pets Available for Adoption</p>
	<div class="row">
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="French Bulldog">
				<div class="card-body p-3">
					<h5 class="card-title">French Bulldog</h5>
					<p class="card-text">Known for their bat-like ears and playful nature, French Bulldogs are adaptable and great for apartment living.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="Poodle">
				<div class="card-body p-3">
					<h5 class="card-title">Poodle</h5>
					<p class="card-text">Poodles are known for their intelligence and hypoallergenic coats. They are versatile and excel in various dog sports.</p>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card makeup2 h-75" style="width: 18rem;">
				<img src="../image/img.png" class="card-img-top img-fluid img-thumbnail" alt="Beagle">
				<div class="card-body p-3">
					<h5 class="card-title">Beagle</h5>
					<p class="card-text">Beagles are curious, merry, and friendly. They are excellent with children and thrive in active households.</p>
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
					Proper Nutrition</button>
			</h2>
			<div id="flush-collapseOne" class="accordion-collapse collapse"
				data-bs-parent="#accordionFlushExample">
				<div class="accordion-body">
					Feeding your pet a balanced diet is crucial for their health. Ensure they have access 
					to fresh water at all times, and consult with a veterinarian to choose the right food 
					for your pet’s age, breed, and health condition. Avoid giving them human food that 
					could be toxic, such as chocolate, onions, or grapes.
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-medium" type="button"
					data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
					aria-expanded="false" aria-controls="flush-collapseTwo">
					Regular Exercise</button>
			</h2>
			<div id="flush-collapseTwo" class="accordion-collapse collapse"
				data-bs-parent="#accordionFlushExample">
				<div class="accordion-body">
					Exercise is essential to keep your pet physically and mentally healthy. Regular walks, 
					playtime, and activities like fetch or agility training help prevent obesity and 
					behavioral issues. Tailor the intensity and duration of exercise to your pet’s breed and age.
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header">
				<button class="accordion-button collapsed fw-medium" type="button"
					data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
					aria-expanded="false" aria-controls="flush-collapseThree">
					Grooming and Hygiene</button>
			</h2>
			<div id="flush-collapseThree" class="accordion-collapse collapse"
				data-bs-parent="#accordionFlushExample">
				<div class="accordion-body">
					Regular grooming is important to keep your pet’s coat and skin healthy. Brush your pet 
					according to their coat type, and bathe them as needed. Pay attention to nail trimming, 
					ear cleaning, and dental care to prevent common health issues. Grooming also provides 
					an opportunity to check for any unusual lumps, bumps, or parasites.
				</div>
			</div>
		</div>
	</div>
</div>



	<%@ include file="Component/footer.jsp"%>

</body>

</html>