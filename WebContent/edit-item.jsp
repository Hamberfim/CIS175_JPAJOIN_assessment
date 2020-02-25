<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Appliance Item Form</title>
</head>
<body>
	<form action="editItemServlet" method="post">
		<fieldset>
			<legend>Edit Appliance Item Form:</legend>
			Maker: <input type="text" name="maker" value="${itemToEdit.maker}">
			Model: <input type="text" name="model" value="${itemToEdit.model}">
			Category: <input type="text" name="category" value="${itemToEdit.category}">
			<!-- hide id from user but need it to identify/edit the data -->
			<input type="hidden" name="id" value="${itemToEdit.id}"> <input
				type="submit" value="Save Edited Item">
		</fieldset>
	</form>
</body>
</html>