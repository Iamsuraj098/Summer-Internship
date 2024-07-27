<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb" session="false" info="iod dsj lorem24"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= "User name =" + request.getParameter("username")%>
	<%= "Math =" + config.getInitParameter("Math") %>
	<%= "Science =" + config.getInitParameter("Science") %>
</body>
</html>