<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
  //use to protect from unauthorised login. 
  	if(session.getAttribute("username") == null){
  		response.sendRedirect("login.jsp");
  	}
  %>
  <%@ include file="menu.html" %>
  <h2>Registration Page</h2>
  <form action="Register" method="post">
     Name : <br>
     <input type="text" name="name"> <br>
     Age : <br>
     <input type="number" name="age"> <br>
     Email : <br>
     <input type="text" name="email"> <br>
     User Name : <br>
     <input type="text" name="uname"> <br>
     Password : <br>
     <input type="password" name="password"> <br> <br>
     &nbsp;  &nbsp;  &nbsp;  &nbsp;  
     <input type="submit" value="Register">
  </form> 
  
 <input type="hidden" id="state" value=<%= request.getAttribute("status") %>>

 <script>
  if(state.value == "success"){
	  alert("Registration successful...");
  }
  else if(state.value == "fail")
	  alert("Registration fail...");
 </script>

</body>
</html>