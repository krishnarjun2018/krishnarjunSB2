<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<br><br><br>
<table>
                        <tr>
                            <th>Id</th>
                        </tr>
                       <%--  <core:forEach var="detail" items="${detail}"> --%>
                            <tr>
                                <td>${detail.id}</td>
                             <td>${detail.amount}</td>
                                <td>
                                   <a href="${pageContext.request.contextPath}/user/delete/{id}">Delete</a>                              
                                 </td>                    
                            </tr>
                    <%--     </core:forEach> --%>
                    </table>
<br><br><br>

<a href="${pageContext.request.contextPath}/user/checkout">Checkout</a>
<a href="${pageContext.request.contextPath}/user/show-list">Show List</a>

<jsp:include page="footer.jsp"/>
</body>
</html>