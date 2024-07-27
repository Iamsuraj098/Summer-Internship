<%@page import="java.awt.geom.Path2D"%>
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
	String role = (String) request.getParameter("role");
	if (role.equals("Admin")) {
	%>
	<jsp:forward page="Admin.jsp">
		<jsp:param value="&&&&&&" name="name" />
	</jsp:forward>
	<%
	} else if (role.equals("Student")) {
	%>
	<jsp:forward page="aug26.jsp">
		<jsp:param value="@@@@@@" name="name" />
	</jsp:forward>
	<%
	} else if (role.equals("Teacher")) {
	%>
	<jsp:forward page="teacher.jsp">
		<jsp:param value="######" name="name" />
	</jsp:forward>
	<%
	} else {
	%>
	<jsp:forward page="July26.jsp" />
	<%
	}
	%>
</body>
</html>