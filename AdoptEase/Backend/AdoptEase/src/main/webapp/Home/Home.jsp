<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="Home.css">
  <title>AdoptEase Home</title>
</head>

<body>
  <!-- NavBar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-primary fs-4">
    <div class="container">
      <a class="navbar-brand fs-4" href="#">AdoptEase</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse d-md-flex justify-content-md-end gap-50" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active makeup" aria-current="page" href="http://localhost:8081/AdoptEase/Login/Login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active makeup" href="http://localhost:8081/AdoptEase/Registration/Registration.jsp">Registration</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Mid-1 -->
  <div class="container-fluid">
    <div id="carouselExampleSlidesOnly" class="carousel slide m-1 border" data-bs-ride="carousel">
      <div class="carousel-inner" style="width: 100%; height: 70vh;">
        <div class="carousel-item active" data-bs-interval="2000">
          <img
            src="https://images.unsplash.com/photo-1700949373637-a07cf1b7cf67?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            class="rounded mx-auto d-block img-fluid w-100" alt="img">
          <!-- style="width: 100%; height: 70vh;" -->
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img
            src="https://images.unsplash.com/photo-1612287668012-49f536b3a1ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            class="rounded mx-auto d-block img-fluid w-100" alt="img">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img
            src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            class="rounded mx-auto d-block img-fluid w-100" alt="img">
        </div>
      </div>
    </div>
    <div class="card position-relative start-50 translate-middle w-75" style="border:1px solid rgb(134, 134, 134)">
      <div class="card-body text-center fs-4">
        <p class="card-title fw-bolder">Welcome to Your Forever Friend, Adopt and Care for Pets Today!</p>
        <p class="card-text">Find Love, Give Love: Adopt a Pet Today!</p>
        <a href="http://localhost:8081/AdoptEase/Registration/Registration.jsp" class="btn btn-primary fs-4">Adopt Now</a>
      </div>
    </div>
  </div>

  <!-- Mid-2 -->
  <div class="container-fluid text-center">
    <div class="row row-cols-1">
        <div class="col">
            <div class="card mb-3" style="width: 100%;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                            class="img-fluid rounded-start" alt="Adopted dog with owner">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body text-start">
                            <h5 class="card-title">Happy Adoption Story: Max's New Home</h5>
                            <p class="card-text">Max, a playful and energetic Labrador Retriever, found his forever home with the Johnson family. 
                            After spending months in the shelter, Max is now enjoying daily walks, playing fetch, and lots of belly rubs. 
                            His adoption has brought joy and companionship to the Johnsons, who were looking for a loyal friend.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mb-3" style="width: 100%;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                            class="img-fluid rounded-start" alt="Adopted cat with family">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body text-start">
                            <h5 class="card-title">Rescue Success: Bella's Journey to a Loving Family</h5>
                            <p class="card-text">Bella, a shy but affectionate Siamese cat, was rescued from the streets and now lives with the Parker family. 
                            Over time, Bella has blossomed into a confident and loving companion, bringing warmth and love to her new home. 
                            The Parkers are thrilled to have given Bella a second chance at a happy life.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


  <!-- Mid-3 -->
 <div class="container">
    <p class="text-center fs-4 fw-bolder">Frequently Asked Questions</p>
    <div class="accordion accordion-flush" id="accordionFlushExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    What are the steps to adopt a pet?
                </button>
            </h2>
            <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    To adopt a pet, you typically need to: <br>
                    1. Browse available pets on our website.<br>
                    2. Submit an adoption application.<br>
                    3. Meet the pet in person.<br>
                    4. Complete an adoption agreement.<br>
                    5. Pay the adoption fee.<br>
                    6. Take your new pet home!
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    What should I consider before adopting a pet?
                </button>
            </h2>
            <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    Before adopting a pet, consider your lifestyle, living situation, and the time and financial commitment needed to care for a pet. It's important to choose a pet that fits well with your household and daily routine.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                    How much does it cost to adopt a pet?
                </button>
            </h2>
            <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    The cost to adopt a pet varies depending on the type of animal, its age, and any additional services provided. Typically, adoption fees range from $50 to $300 and may include vaccinations, spaying/neutering, and a microchip.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                    What should I expect in the first few days after adopting a pet?
                </button>
            </h2>
            <div id="flush-collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    During the first few days, your new pet may need time to adjust to their new environment. Provide a quiet space, establish a routine, and be patient as they explore their surroundings and get to know you.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                    How do I introduce my new pet to other pets in the household?
                </button>
            </h2>
            <div id="flush-collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    Introduce your new pet to existing pets gradually. Start with short, supervised meetings in a neutral space. Ensure that each pet has its own space and belongings to reduce territorial behavior.
                </div>
            </div>
        </div>
    </div>
</div>


  <!-- Footer -->
  <div class="container-fluid border-top">
		<a class="navbar-brand" href="#">AdoptEase</a>
		<footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 m-2">
			<div class="col">
				<p class="text-body-secondary">&copy; 2024 AdoptEase</p>
			</div>

			<div class="col mb-2"></div>

			<div class="col mb-2">
				<h5>Adoption Resources</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Adopt a Pet</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Adoption Process</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Adoption Fees</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Success Stories</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>Pet Care Guides</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Pet Health</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Training Tips</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Nutrition Advice</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Grooming Guides</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Pet Safety</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>About AdoptEase</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Our Mission</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Our Team</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Partners</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Blog</a></li>
					<li class="nav-item mb-1"><a href="#"
						class="nav-link p-0 text-body-secondary">Contact Us</a></li>
				</ul>
			</div>
		</footer>
	</div>

</body>

</html>