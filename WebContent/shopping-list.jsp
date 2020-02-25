<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appliance Item Edit</title>
</head>
<body>
	<form method="post" action="navigationServlet">
		<fieldset>
			<legend>Appliance Item Edit/Shopping List Form:</legend>
			<table>
				<c:forEach items="${requestScope.allItems}" var="currentitem">
					<tr>
						<td><input type="radio" name="id" value="${currentitem.id}"></td>
						<td>${currentitem.maker}</td>
						<td>${currentitem.model}</td>
						<td>${currentitem.category}</td>
					</tr>
				</c:forEach>
			</table>
			<input type="submit" value="edit" name="doThisToItem"> <input
				type="submit" value="delete" name="doThisToItem"> <input
				type="submit" value="add" name="doThisToItem">
		</fieldset>
	</form>
</body>
</html>