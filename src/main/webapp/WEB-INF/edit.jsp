<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
</head>
<body>
<h2>Edit Burger</h2>
<form:form action="/edit/${burger.id}" method="put" modelAttribute="burger">
	<div>
		<form:label path="burgerName">Burger Name:</form:label><br>
		<form:errors path="burgerName" class="text-danger"/>
		<form:input path="burgerName" style="width:250px;"/>
	</div>
	<div>
		<form:label path="restaurantName">Restaurant Name:</form:label><br>
		<form:errors path="restaurantName" class="text-danger"/>
		<form:input path="restaurantName" style="width:250px;"/>
	</div>
	<div>
		<form:label path="rating">Rating:</form:label><br>
		<form:errors path="rating" class="text-danger"/>
		<form:input path="rating" style="width:250px;"/>
	</div>
	<div>
		<form:label path="notes">Notes:</form:label><br>
		<form:errors path="notes" class="text-danger"/>
		<form:textarea path="notes" rows="3" style="width:250px;"/>
	</div>
	<div>
		<input type="submit" value="Submit"/>
	</div>
</form:form>

</body>
</html>