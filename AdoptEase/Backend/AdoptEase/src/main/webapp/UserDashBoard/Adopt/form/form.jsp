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
	
    <div class="container-fluid mt-3 w-100 d-flex justify-content-center">
        <form class="w-75" id="adoptionForm">
            <!-- Applicant Information -->
            <div class="mb-3">
                <label for="fullName" class="form-label">Owner Name</label>
                <input type="text" class="form-control" id="fullName" placeholder="Enter your full name">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" placeholder="Enter your email">
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number">
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Home Address</label>
                <input type="text" class="form-control" id="address" placeholder="Enter your home address">
            </div>

            <hr>
            <p>Pet Details</p>
            <p>Fetch Pet details</p>
            <!-- Submit Button -->

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
                            <!-- Add any additional terms and conditions here -->
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Success Message -->
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
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
    
    	<%@ include file="../../Component/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('adoptionForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent default form submission
            // Display success modal
            var successModal = new bootstrap.Modal(document.getElementById('successModal'));
            successModal.show();
            // Optionally reset the form
            this.reset();
        });
    </script>
</body>

</html>