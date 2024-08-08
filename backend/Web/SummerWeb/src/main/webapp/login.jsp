<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
  <%@ include file="menu.html" %>
  <h2>Login Page</h2>
  <form action="Login" method="post">
     User Name : <br>
     <input type="text" name="uname"> <br>
     Password : <br>
     <input type="password" name="password"> <br> <br>
     &nbsp;  &nbsp;  &nbsp;  &nbsp;  
     <input type="submit" value="Log In">
  </form> 
  
 <input type="hidden" id="state" value=<%= request.getAttribute("status") %>>

 <script>
 if(state.value == "fail")
	  alert("Login fail due to invalid credentails. Login again...");
 </script>

</body>
</html>