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
	if (session != null)
		session.invalidate();
%>
<body>
<h1>Clear Everything</h1>
Your session info has been cleared.  Verify this by going to the <a href="page2.jsp">Answers Page</a>
</body>
</html>