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
<c:choose>
	<c:when test="${sessionScope.loggedin == null}">
		<h1>Invalid Session</h1>
		Sorry, you must go to the <a href="welcome.jsp">
		Welcome Page</a> before you can see the information here.
	</c:when>
	<c:otherwise>
		<h1>Welcome Back!</h1>
		You have a valid session and we're happy to see you again
		<strong>The answer is 42.</strong>
		<br />
		Session Info:<br />
		Creation time: ${session.creationTime}<br />
		Last access: ${session.getLastAccessedTime}<br />
		Set Attributes:<br />
		<c:forEach var="attr" items="${session.attributes}">
			attr<br />
		</c:forEach>
		Also check out the <a href="picker.jsp">Picker Page</a> for more session fun!
	</c:otherwise>
</c:choose>
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