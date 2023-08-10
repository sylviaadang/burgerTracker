<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Burgers</title>
</head>
<body>
	<table>
	<thead>
		<tr>
			<th>Burger Name</th>
			<th>Restaurant Name</th>
			<th>Rating (out of 5)</th>
			<th>Notes</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
         <c:forEach var="burger" items="${burgers}">
         	<tr>
<%--          		<td><c:out value="${burger.id}"/></td>
 --%>         	<td><c:out value="${burger.burgerName}"/></td>
         		<td><c:out value="${burger.restaurantName}"/></td>
         		<td><c:out value="${burger.rating}"/></td>
         		<td><c:out value="${burger.notes}"/></td>
         		<td><a href="/edit/${burger.id}">edit</a>
         	</tr>
         </c:forEach>
    </tbody>
</table>
	
	<form:form action="/addBurger" method="post" modelAttribute="burger">
		<div class="form-group">
			<label>Burger Name</label>
			<form:input type="text" path="burgerName" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Restaurant Name</label>
			<form:input type="text" path="restaurantName" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Rating</label>
			<form:input type="number" path="rating" class="form-contol"/>
		</div>
		<div class="form-group">
			<label>Notes</label>
			<form:input type="text" path="notes" class="form-contol"/>
		</div>
		<input type="submit" value="Submit" class="btn btn-primary"/>
	
	</form:form>

</body>
</html>