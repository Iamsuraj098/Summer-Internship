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
		String name = (String)request.getParameter("username");
		String pass = (String)request.getParameter("password");
	%>
	<h2>
		<%
			if(pass.equals("123")){
				session.setAttribute("username", name);
				response.sendRedirect("Dash.jsp");
			}else{
				out.print("Login is invalid......");
			}
		%>
	</h2>
</body>
</html>