<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<br><br><br>
<table>
                        <tr>
                            <th>Id</th>
                            <th>Product Name</th>
                            <th>Cost</th>
                            <th>Product Description</th>
                        </tr>
                        <core:forEach var="product" items="${products}">
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.productName}</td>
                                <td>${product.cost}</td>
                                 <td>${product.productDescription}</td>
                                <td>
                                <%-- <spring:form action="${pageContext.request.contextPath}/user/add-to-cart/{productId}" method="GET" modelAttribute="detail"> --%>
                                  <a href="${pageContext.request.contextPath}/user/add-to-cart/${product.id}">Add to Cart</a>
                                 <%--  <div>
											<input type="submit" value="Add to Cart"/>
								</div>
                                  </spring:form>  --%>                            
                                 </td>                    
                            </tr>
                        </core:forEach>
                    </table>
<br><br><br>
<a href="${pageContext.request.contextPath}/user/show-kit">View Cart</a>
<jsp:include page="footer.jsp"/>
</body>
</html>