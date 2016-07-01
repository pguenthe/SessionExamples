<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.util.Date, java.util.Enumeration" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page 2</title>
</head>
<body>
<%
	if (session.getAttribute("loggedin") == null ) {
		out.println ("<h1>Invalid Session</h1>");
		out.println ("Sorry, you must go to the <a href=\"welcome.jsp\">");
		out.println ("Welcome Page</a> before you can see the information here.");
	} else {
		out.println ("<h1>Welcome Back!</h1>");
		out.println ("You have a valid session and we're happy to see you again.");
		out.println ("<strong>The answer is 42.</strong>");
		out.println ("<br />");
		out.println ("Session Info:<br />");
		out.println ("Creation time: " + new Date(session.getCreationTime()) + "<br />");
		out.println ("Last access: " + new Date(session.getLastAccessedTime()) + "<br />");
		out.println ("Set Attributes:<br />");
		Enumeration<String> e = session.getAttributeNames();
		while (e.hasMoreElements())
		{
		    String name = (String) e.nextElement();
			out.println (name + "<br />");
		}
		out.println ("Also check out the <a href=\"picker.jsp\">Picker Page</a> for more session fun!");
	}
%>
</body>
</html>