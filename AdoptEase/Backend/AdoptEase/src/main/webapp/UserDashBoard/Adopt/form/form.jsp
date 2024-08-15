<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Text with Dropdowns</title>
    <link rel="stylesheet" href="Adopt.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	
	<%@ include file="../../Component/Header.jsp" %>
	<% ArrayList<String> userdata = (ArrayList<String>)request.getAttribute("userdata"); %>
    <div class="container-fluid mt-3 w-100 d-flex justify-content-center">
        <form class="w-75" id="adoptionForm" action="soldpet" method="Post">
            <!-- Applicant Information -->
            <div class="mb-3">
                <label for="fullName" class="form-label">Owner Name</label>
                <input type="text" value="<%= userdata != null ? userdata.get(0) : "" %>" class="form-control" id="fullName" placeholder="Enter your full name">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" value="<%= userdata != null ? userdata.get(2) : "" %>" class="form-control" id="email" placeholder="Enter your email">
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Home Address</label>
                <input type="text" value="<%= userdata != null ? userdata.get(1) : "" %>" class="form-control" id="address" placeholder="Enter your home address">
            </div>

            <hr>
            <p>Pet Details</p>
            <!-- Display Pet Details -->
            <div class="container my-4">
                <%
                ArrayList<String> data = (ArrayList<String>) request.getAttribute("petdata");
                if(data != null){
                %>
                <div class="card mb-3 w-100">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../image/img.png" class="img-fluid rounded-start w-75" alt="Pet Image">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body d-flex flex-column justify-content-between h-100">
                                <div class="fs-5">
                                    <h5 class="card-title">Dog Name</h5>
                                    <p class="card-text m-0 p-0">Age: <%= data.get(1) %></p>
                                    <p class="card-text m-0 p-0">Breed: <%= data.get(2) %></p>
                                    <p class="card-text m-0 p-0">Color: <%= data.get(8) %></p>
                                    <p class="card-text m-0 p-0">Weight: <%= data.get(7) %></p>
                                    <p class="card-text m-0 p-0">Price: <%= data.get(4) %></p>
                                    <p class="card-text m-0 p-0">Other Details: null</p>
                                    <input type="hidden" name="selected" value='<%=data.get(0) %>' id="pet">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                } else {
                %>
                <p class="text-center">No data available.</p>
                <%
                }
                %>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="termsCheck">
                <label class="form-check-label" for="termsCheck">
                    I agree to the <a href="#" data-bs-toggle="modal" data-bs-target="#termsModal">terms and conditions</a>.
                </label>
            </div>

            <div class="mt-4 mb-1 text-center">
                <button type="submit" class="btn btn-primary">Submit Application</button>
            </div>
        </form>
    </div>

    <!-- Terms and Conditions Modal -->
    <div class="modal fade" id="termsModal" tabindex="-1" aria-labelledby="termsModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="termsModalLabel">Terms and Conditions</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Here are the terms and conditions for pet adoption...</p>
                    <ul>
                        <li>Applicants must be at least 18 years old.</li>
                        <li>All pets must be spayed or neutered before adoption.</li>
                        <li>Applicants must provide proof of a stable living environment.</li>
                        <li>Pets should be kept indoors and provided with necessary care.</li>
                        <li>The adoption fee is non-refundable.</li>
                        <li>We reserve the right to conduct a home visit before approval.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Success Modal -->
    <div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successModalLabel">Success</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Your adoption application has been successfully submitted! We will review your application and contact you soon.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">
                   <a href="http://localhost:8081/AdoptEase/UserDashBoard/UserDash.jsp"
				class="text-dark text-decoration-none">
				<span>AdoptEase</span></button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    document.getElementById('adoptionForm').addEventListener('submit', function(event) {
        // Check if the terms checkbox is checked
        var termsCheck = document.getElementById('termsCheck');
        if (!termsCheck.checked) {
            event.preventDefault(); // Prevent form submission
            alert("You must agree to the terms and conditions before submitting.");
            return;
        }

        // Stop form submission and display success modal
        event.preventDefault();
        var successModal = new bootstrap.Modal(document.getElementById('successModal'));
        successModal.show();
    });
    </script>

    <%@ include file="../../Component/footer.jsp" %>
</body>

</html>
