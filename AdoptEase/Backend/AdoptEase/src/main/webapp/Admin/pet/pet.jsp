<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../Component/Header.jsp"%>
	<div class="tab-pane fade show active fs-5" id="nav-home"
		role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
		<ul class="nav nav-tabs pt-1 bg-body-secondary" id="myTab"
			role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home" type="button" role="tab"
					aria-controls="home" aria-selected="true">Add Pet</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile" type="button" role="tab"
					aria-controls="profile" aria-selected="false">Details</button>
			</li>
		</ul>
		<!-- Tab panes -->
		<%-- <input type="hidden" id="show" value=<%= request.getParameter("msg") %>> --%>
		<div class="tab-content">
			<div class="tab-pane active" id="home" role="tabpanel"
				aria-labelledby="home-tab" tabindex="0">
				<div class="container mt-2">
					<%
					String msg = (String) request.getAttribute("msg");
					if (msg != null && !msg.isEmpty()) {
					%>
					<div class="alert alert-info m-1" role="alert">
						<%=msg%>
					</div>
					<h5 class="m-2">Add More</h5>
					<%
					}
					%>
					<form class="form-control form-control-sm border-dark"
						action="addPet" method="Post">
						<div class="form-group">
							<label for="breed">Breed</label> <input
								class="form-control form-control-sm" type="text" id="breed"
								placeholder="Enter Breed's name" name="breed"
								aria-label=".form-control-sm example" required>
						</div>
						<div class="form-group">
							<label for="age">Age</label> <input
								class="form-control form-control-sm" type="text" id="age"
								placeholder="Enter age's name" name="age"
								aria-label=".form-control-sm example" required>
						</div>
						<div class="form-group">
							<label for="gender">Gender</label> <select
								class="form-control form-control-sm" id="gender"
								onchange="updateText(this, 'selectedValue0')">
								<option value="null">Select</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>
						</div>
						<input type="hidden" name="gender" id="selectedValue0">
						<div class="form-group">
							<label for="activity">Activity</label> <select
								class="form-control form-control-sm" id="activity"
								onchange="updateText(this, 'selectedValue2')">
								<option value="null">Select</option>
								<option value="very active">very active</option>
								<option value="active">active</option>
								<option value="laid back">laid back</option>
								<option value="lap pet">lap pet</option>
							</select>
						</div>
						<input type="hidden" name="active" id="selectedValue2">
						<div class="form-group">
							<label for="color">Color</label> <input
								class="form-control form-control-sm" type="text" id="color"
								placeholder="Enter Pet's Color" name="color"
								aria-label=".form-control-sm example" required>
						</div>
						<div class="form-group">
							<label for="weight">Weight</label> <input
								class="form-control form-control-sm" type="number" id="weight"
								placeholder="Enter Pet's weight" name="weight"
								aria-label=".form-control-sm example" required>
						</div>
						<div class="form-group m-1">
							<label for="image">Image</label> <input type="file" name="img"
								class="form-control-file" id="image" required>
						</div>
						<div class="form-group">
							<label for="price">Price</label> <input
								class="form-control form-control-sm" type="number" id="price"
								placeholder="Enter pet's price" name="price"
								aria-label=".form-control-sm example" required>
						</div>
						<div class="form-group">
							<label for="availability">Availability</label> <select
								class="form-control form-control-sm" id="availability"
								onchange="updateText(this, 'selectedValue1')">
								<option value="null">Select</option>
								<option value="Available">Available</option>
								<option value="Not Available">Not Available</option>
							</select>
						</div>
						<input type="hidden" name="avail" id="selectedValue1">
						<button type="submit" class="btn btn-primary m-1">Add</button>
					</form>
				</div>
			</div>

			<div class="tab-pane m-2" id="profile" role="tabpanel"
				aria-labelledby="profile-tab" tabindex="0">
				<table class="table table-primary table-hover">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Breed</th>
							<th scope="col">Age</th>
							<th scope="col">Color</th>
							<th scope="col">Status</th>
							<th scope="col">Availability</th>
							<th scope="col">Photo</th>
							<th scope="col">Price</th>
							<th scope="col">Weight</th>
							<th scope="col">Activity</th>
							<th scope="col">Buyer</th>
						</tr>
					</thead>
					<tbody>
						<%
						ArrayList<ArrayList<String>> details = (ArrayList<ArrayList<String>>) request.getAttribute("details");
						if (details != null && !details.isEmpty()) {
							for (int i = 0; i < details.size(); i++) {
								ArrayList<String> data = details.get(i);
						%>
						<tr>
							<th><%=data.get(0)%></th>
							<td><%=data.get(1)%></td>
							<td><%=data.get(2)%></td>
							<td><%=data.get(3)%></td>
							<td><%=data.get(4)%></td>
							<td><%=data.get(5)%></td>
							<td><img src='../../image/"+ <%=data.get(6)%>+"'
								height='70px'></td>
							<td><%=data.get(7)%></td>
							<td><%=data.get(8)%></td>
							<td><%=data.get(9)%></td>
							<td><%=data.get(10)%></td>
						</tr>
						<%
						}
						} else {
						%>
						<tr>
							<td colspan="9" class="text-center w-100">No data available</td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			<form action="petDetails" method="post"
				class="d-flex flex-column align-items-center m-1">
				<button type="submit" class="btn btn-primary">Refresh</button>
			</form>
			</div>
		</div>
	</div>
	<script>
		function updateText(dropdown, hiddenInputId) {
			var selectedText = dropdown.options[dropdown.selectedIndex].text;
			document.getElementById(hiddenInputId).value = selectedText;
		}
	</script>
</body>
</html>
