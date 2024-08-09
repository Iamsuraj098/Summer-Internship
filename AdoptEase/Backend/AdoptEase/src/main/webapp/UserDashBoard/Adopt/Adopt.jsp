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
		<form action="favour" method="Post">
			<div class="mb-3">
				<div class="d-flex align-items-center">
					<span>I’d like to adopt a&nbsp;</span>
					<div class="dropdown">
						<a class="dropdown-toggle text-decoration-underline" href="#"
							role="button" id="dropdownMenuLink1" data-bs-toggle="dropdown"
							aria-expanded="false"> Select </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink1">
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'dog', 'selectedValue1')">dog</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'cat', 'selectedValue1')">cat</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink1', 'bird', 'selectedValue1')">bird</a></li>
						</ul>
					</div>
					. <input type="hidden" name="like" id="selectedValue1">
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
								onclick="updateText('dropdownMenuLink2', 'my family', 'selectedValue2')">my
									family</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink2', 'myself', 'selectedValue2')">myself</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink2', 'a friend', 'selectedValue2')">a
									friend</a></li>
						</ul>
					</div>
					. <input type="hidden" name="looking" id="selectedValue2">
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
								onclick="updateText('dropdownMenuLink3', 'no kids', 'selectedValue3')">no kids</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink3', '1 kid', 'selectedValue3')">1 kid</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink3', '2+ kids', 'selectedValue3')">2+ kids</a></li>
						</ul>
					</div>
					at home. <input type="hidden" name="have" id="selectedValue3">
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
								onclick="updateText('dropdownMenuLink4', 'first time', 'selectedValue4')">first
									time</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink4', 'previous', 'selectedValue4')">previous</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink4', 'current', 'selectedValue4')">current</a></li>
						</ul>
					</div>
					pet owner. <input type="hidden" name="owner" id="selectedValue4">
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
								onclick="updateText('dropdownMenuLink5', 'dogs', 'selectedValue5')">dogs</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink5', 'cats', 'selectedValue5')">cats</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink5', 'dogs and cats', 'selectedValue5')">dogs
									and cats</a></li>
						</ul>
					</div>
					. <input type="hidden" name="currently" id="selectedValue5">
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
								onclick="updateText('dropdownMenuLink6', 'male', 'selectedValue6')">male</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink6', 'female', 'selectedValue6')">female</a></li>
						</ul>
					</div>
					pet. <input type="hidden" name="gender" id="selectedValue6">
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
								onclick="updateText('dropdownMenuLink7', 'medium (26-60 lbs)', 'selectedValue7')">medium
									(26-60 lbs)</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink7', 'large (61-100 lbs)', 'selectedValue7')">large
									(61-100 lbs)</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink7', 'extra large (101 lbs or more)', 'selectedValue7')">extra
									large (101 lbs or more)</a></li>
						</ul>
					</div>
					. <input type="hidden" name="weight" id="selectedValue7">
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
								onclick="updateText('dropdownMenuLink8', 'very active', 'selectedValue8')">very
									active</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'active', 'selectedValue8')">active</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'laid back', 'selectedValue8')">laid
									back</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink8', 'lap pet', 'selectedValue8')">lap pet</a></li>
						</ul>
					</div>
					. <input type="hidden" name="activity" id="selectedValue8">
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
								onclick="updateText('dropdownMenuLink9', 'House Trained', 'selectedValue9')">House
									Trained</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink9', 'Allergy Friendly', 'selectedValue9')">Allergy
									Friendly</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink9', 'no preference', 'selectedValue9')">no
									preference</a></li>
						</ul>
					</div>
					. <input type="hidden" name="sick" id="selectedValue9">
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
								onclick="updateText('dropdownMenuLink10', 'German Shepherd', 'selectedValue10')">German
									Shepherd</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Golden Retriever', 'selectedValue10')">Golden
									Retriever</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Labrador Retriever', 'selectedValue10')">Labrador
									Retriever</a></li>
							<li><a class="dropdown-item"
								onclick="updateText('dropdownMenuLink10', 'Many...', 'selectedValue10')">Many...</a></li>
						</ul>
					</div>
					. <input type="hidden" name="breed" id="selectedValue10">
				</div>
			</div>

			<!-- Repeat similar structure for other sentences -->
			<div class="m-4">
				<button type="submit" class="btn btn-primary fs-3">Next</button>
			</div>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function updateText(dropdownId, text, id) {
			document.getElementById(dropdownId).textContent = text;
			document.getElementById(id).value = text;
		}
	</script>

	<%@ include file="../Component/footer.jsp"%>
</body>

</html>