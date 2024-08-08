<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AdoptEase</title>
<link rel="stylesheet" href="Adopt.css">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<%@ include file="../Component/Header.jsp"%>
	
	
	<div
		class="container-fluid mt-5 fs-4 text-center d-flex align-items-center justify-content-center flex-column">
		<h2 class="mb-4">Let’s find the perfect match for you!</h2>
		<h4 class="mb-4">Tell us a bit about yourself:</h4>
		<form action="favour">
			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I’d like to adopt a&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink1" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'dog')">dog</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'cat')">cat</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'bird')">bird</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I am looking to adopt for&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink2" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink2">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink2', 'my family')">my
									family</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink2', 'myself')">myself</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink2', 'a friend')">a
									friend</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I have&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink3" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink3">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink3', 'no kids')">no kids</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink3', '1 kid')">1 kid</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink3', '2+ kids')">2+ kids</a></li>
						</ul>
					</div>
					at home.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I am a&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink4" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink3">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink4', 'first time')">first
									time</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink4', 'previous')">previous</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink4', 'current')">current</a></li>
						</ul>
					</div>
					pet owner.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I currently have&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink5" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink5', 'dogs')">dogs</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink5', 'cats')">cats</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink5', 'dogs and cats')">dogs
									and cats</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>
			
			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I would like to adopt&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink6" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink6', 'male')">male</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink6', 'female')">female</a></li>
						</ul>
					</div>
					pet.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I prefer a pet that is &nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink7" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink7', 'medium (26-60 lbs)')">medium
									(26-60 lbs)</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink7', 'large (61-100 lbs)')">large
									(61-100 lbs)</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink7', 'extra large (101 lbs or more)')">extra
									large (101 lbs or more)</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>My pet's activity level should be &nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink8" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'very active')">very
									active</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'active')">active</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'laid back')">laid
									back</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'lap pet')">lap pet</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>My pet must be &nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink9" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink9', 'House Trained')">House
									Trained</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink9', 'Allergy Friendly')">Allergy
									Friendly</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink9', 'no preference')">no
									preference</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>A breed that I really like is &nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink10" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'German Shepherd')">German
									Shepherd</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Golden Retriever')">Golden
									Retriever</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Labrador Retriever')">Labrador
									Retriever</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Many...')">Many...</a></li>
						</ul>
					</div>
					.
					 <input type="hidden" name="selectedValue" id="selectedValue">
				</div>
			</div>

			<!-- Repeat similar structure for other sentences -->
			<div class="m-4">
				<button type="submit" class="btn btn-primary fs-3">
					Next
				</button>
			</div>
		</form>
	</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function updateText(dropdownId, text) {
			document.getElementById(dropdownId).textContent = text;
			document.getElementById('selectedValue').value = text;
		}
	</script>
	
	<%@ include file="../Component/footer.jsp" %>
</body>

</html>