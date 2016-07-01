<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Another Page</title>
</head>
<%
	//check to see if we've got new values from the form
	if (request.getQueryString() != null) {
		if (request.getParameter("color") != null)
			session.setAttribute("color", request.getParameter("color"));
		if (request.getParameter("font") != null)
			session.setAttribute("font", request.getParameter("font"));
	}

	//if session values aren't set, set to default
	if (session.getAttribute("color") == null)
		session.setAttribute("color", "white");
	if (session.getAttribute("font") == null)
		session.setAttribute("font", "Times New Roman");
%>
<body style="background-color:${sessionScope.color};font-family:${sessionScope.font}">
<h1>Another Page</h1>
See that your session settings are available here too!
<br>
<a href="picker.jsp">Back to the picker</a>
<br />
</body>
</html>