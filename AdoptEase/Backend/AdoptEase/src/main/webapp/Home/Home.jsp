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
              <img
                src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body text-start">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                  content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-3" style="width: 100%;">
          <div class="row g-0">
            <div class="col-md-4">
              <img
                src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body text-start">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                  content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
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
            Accordion Item #1
          </button>
        </h2>
        <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the first item's accordion body.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
            Accordion Item #2
          </button>
        </h2>
        <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being
            filled with some actual content.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed fw-medium" type="button" data-bs-toggle="collapse"
            data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
            Accordion Item #3
          </button>
        </h2>
        <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the
            <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting
            happening here in terms of content, but just filling up the space to make it look, at least at first glance,
            a bit more representative of how this would look in a real-world application.
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <div class="container-fluid border-top">
    <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 m-2">
      <div class="col">
        <!-- <a href="/" class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
      </a> -->
        <p class="text-body-secondary">&copy; 2024</p>
      </div>

      <div class="col mb-2">

      </div>

      <div class="col mb-2">
        <h5>Section</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
        </ul>
      </div>

      <div class="col mb-3">
        <h5>Section</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
        </ul>
      </div>

      <div class="col mb-3">
        <h5>Section</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
          <li class="nav-item mb-1"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
        </ul>
      </div>
    </footer>
  </div>

</body>

</html>