<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Picker Page</title>
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
<h1>Picker Page</h1>
This page lets you choose color and font for the other pages of the website.
<br>
<form name="picker" action="picker.jsp">
	<select name="color">
		<option>Red</option>
		<option>Green</option>
		<option>Blue</option>
		<option>White</option>
		<option>PeachPuff</option>
	</select>
	<select name="font">
		<option>Arial</option>
		<option>Comic Sans MS</option>
		<option>Courier New</option>
		<option>Helvetica</option>
		<option>Times New Roman</option>
	</select>
	<button type="submit">Set my options!</button>
</form>
<br>
<a href="page3.jsp">See that it works on another page</a>
</body>
</html>