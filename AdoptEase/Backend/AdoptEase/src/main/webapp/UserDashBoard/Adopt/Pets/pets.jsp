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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

    <%@ include file="../../Component/Header.jsp" %>
    <form action="#" class="d-flex flex-column align-items-center m-1">
        <div class="card mb-3 w-75">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="../../../image/image2.png" class="img-fluid rounded-start w-75" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body d-flex flex-column justify-content-between">
                        <div class="fs-5">
                            <h5 class="card-title">Dog Name</h5>
                            <p class="card-text m-0 p-0">Age: </p>
                            <p class="card-text m-0 p-0 ">Weight: </p>
                            <p class="card-text m-0 p-0">Breed: </p>
                            <p class="card-text m-0 p-0">Color: </p>
                            <p class="card-text m-0 p-0">Price: </p>
                            <p class="card-text m-0 p-0">Other Details: </p>
                        </div>
                        <div class="d-flex justify-content-end align-items-end w-100 fs-4">
                            <a href="#" class="btn btn-primary btn0" onclick="Add()">Select</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary fs-4" onclick="check()">
        	<a href="http://localhost:8080/AdoptEase/UserDashBoard/Adopt/form/form.jsp" style="color: white; text-decoration: none;">Next</a>
        </button>
    </form>
    
    <%@ include file="../../Component/footer.jsp" %>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var a = true;
        function Add(){
            if(a){
                document.querySelector(".btn0").style.backgroundColor = "green";
                a = false;
            }else{
                document.querySelector(".btn0").style.backgroundColor = "blue";
                a = true;
            }
        }
        function check(){
        	if(!a){
        		/*var link = document.createElement("herf");
        		link.innerText = ""*/
        		alert("Please select");
        	}
        }
        
    </script>
    

</body>

</html>