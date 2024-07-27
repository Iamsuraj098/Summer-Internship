<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2><%out.println("<br>"+"HEllo world"); %></h2>
	<h2><%= "Hello World" %></h2>
	<%String name = "Ram";%>
	<!-- Expression Tag -->
	<%= name %>
	<%= 2*2*2*2*2 %>
	
	<!-- Declartaion Tag -->
	<%! 
		int a = 10;
		int b = 199;
		int show(){ return a+b; }
	%>
	<h2><%int a = show(); %></h2>
	<%= a %>
	<%= show() %>
</body>
</html>