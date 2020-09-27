<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<h3>Add your Address:</h3>
<spring:form action="${pageContext.request.contextPath}/user/finalize" method="POST" modelAttribute="ckit">
<div>
	<div>
		<spring:label path="deliveryAddress">Address: </spring:label>
		<spring:textarea path="deliveryAddress"/>
	</div>
	<br>
	<div>

		<input type="submit" value="Submit"/>
	</div>
</div>
</spring:form>

<a href="${pageContext.request.contextPath}/user/show-kit">Back</a>

<jsp:include page="footer.jsp"/>
</body>
</html>