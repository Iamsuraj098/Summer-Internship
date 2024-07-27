<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Include Example</h1>
	<%
	String role = (String) request.getParameter("role");
	if (role.equals("Admin")) {
	%>
	<jsp:include page="Admin.jsp">
		<jsp:param value="&&&&&&" name="name" />
	</jsp:include>
	<%
	} else if (role.equals("Student")) {
	%>
	<jsp:include page="aug26.jsp">
		<jsp:param value="@@@@@@" name="name" />
	</jsp:include>
	<%
	} else if (role.equals("Teacher")) {
	%>
	<jsp:include page="teacher.jsp">
		<jsp:param value="######" name="name" />
	</jsp:include>
	<%
	} else {
	%>
	<jsp:include page="July26.jsp" />
	<%
	}
	%>
</body>
</html>