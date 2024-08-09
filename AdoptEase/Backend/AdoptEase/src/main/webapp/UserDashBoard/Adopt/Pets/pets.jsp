<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
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

    <%@ include file="../../Component/Header.jsp"%>

    <div class="container my-4">
        <%
        ArrayList<ArrayList<String>> data = (ArrayList<ArrayList<String>>) request.getAttribute("data");
        if (data != null && !data.isEmpty()) {
            for (ArrayList<String> i : data) {
        %>
        <form id="proceed" method="get">
        <div class="card mb-3 w-100">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="../../image/image2.png" class="img-fluid rounded-start w-75" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body d-flex flex-column justify-content-between h-100">
                        <div class="fs-5">
                            <h5 class="card-title">Dog Name</h5>
                            <p class="card-text m-0 p-0">Age: <%= i.get(1) %></p>
                            <p class="card-text m-0 p-0">Breed: <%= i.get(2) %></p>
                            <p class="card-text m-0 p-0">Color: <%= i.get(8) %></p>
                            <p class="card-text m-0 p-0">Weight: <%= i.get(7) %></p>
                            <p class="card-text m-0 p-0">Price: <%= i.get(4) %></p>
                            <p class="card-text m-0 p-0">Other Details: null</p>
                            <input type="hidden" name="selected" value='<%=i.get(0) %>' id="pet">
                        </div>
                        <div class="d-flex justify-content-end align-items-end mt-3">
                            <a class="btn btn-primary btn0" onclick="Add()">Select</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <p class="text-center">No data available.</p>
        <%
        }
        %>
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-primary fs-4 w-25" onclick="check()">Next</button>
        </div>
        </form>
    </div>

    <%@ include file="../../Component/footer.jsp"%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var a = true;
        function Add() {
            const btn = document.querySelector(".btn0");
            if (a) {
                btn.style.backgroundColor = "green";
                a = false;
            } else {
                btn.style.backgroundColor = "blue";
                a = true;
            }
        }
        function check() {
            if (a) {
                alert("Please select");
            }else{
            	document.getElementById("proceed").action = "petForm";
            }
        }
    </script>

</body>

</html>
