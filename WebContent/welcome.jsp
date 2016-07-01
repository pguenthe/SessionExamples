<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
<%
	session.setAttribute("loggedin", "true!");
%>
<h1>Welcome</h1>
Welcome to our website.  A new session has been created and you can now access all content.
<br />
<a href="page2.jsp">See the page with all the answers!</a>

<br />
<br />
<div style="text-align:center">
<a href="welcome.jsp">Welcome Page</a> |
<a href="page2.jsp">Answer Page</a> |
<a href="picker.jsp">Picker Page</a> |
<a href="page3.jsp">Another Example</a> |
<a href="clearall.jsp">Clear Session</a>
</div>
</body>
</html>