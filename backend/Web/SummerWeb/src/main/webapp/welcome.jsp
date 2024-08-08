<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% out.print("Hello " + request.getAttribute("un")); %>
<h1>Welcome here</h1>
<% out.print(request.getAttribute("status")); %>
<%
	//ResultSet rs = StudentDAO.Show(obj); 
	//obj.setUname(session.getAttribute("uname")).toString();
	//ResultSet rs = StudentDAO.Show(obj);
	out.print("Hello WOrld");
%>
</body>
</html>