<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appliance User Shopping Lists</title>
</head>
<body>
	<form method="post" action="listNavigationServlet">
	<fieldset>
			<legend>Existing User Shopping lists</legend>
		<table>
			<c:forEach items="${requestScope.allLists}" var="currentlist">
				<tr>
					<td><input type="radio" name="id" value="${currentlist.id}"></td>
					<td><h2>${currentlist.listName}</h2></td>
				</tr>
				<tr>
					<td colspan="3">Trip Date: ${currentlist.tripDate}</td>
				</tr>
				<tr>
					<td colspan="3">Shopper: ${currentlist.shopper.shopperName}</td>
				</tr>
				<c:forEach var="listVal" items="${currentlist.listOfItems}">
					<tr>
						<td></td>
						<td colspan="3">${listVal.maker}, ${listVal.model}, ${listVal.category}</td>
					</tr>
				</c:forEach>
</c:forEach>
		</table>
		<br />
		
		<input type="submit" value="add items to existing list" name="doThisToItem">
		<input type="submit" value="delete user list" name="doThisToItem">
		<input type="submit" value="add a new user shopping list" name="doThisToItem">
	</fieldset>
	</form>
	<br /><br />
	<!--<a href="addItemsForListServlet">Create a new user shopping List</a><br /><br /> -->
	<a href="index.html">Insert a new appliance item in the selectable inventory</a><br /><br />
</body>
</html>