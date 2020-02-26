<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a new User Shopping list</title>
</head>
<body>
	<form action="createNewListServlet" method="post">
		List Name: <input type="text" name="listName"><br /><br />  
		Trip date: <input type="text" name="month" placeholder="mm" size="4">&nbsp;<input type="text" name="day" placeholder="dd" size="4">,&nbsp;<input type="text" name="year" placeholder="yyyy" size="4"><br /> <br />  
		Shopper Name: <input type="text" name="shopperName"><br /><br />  
		Available Items:<br /> 
		<select name="allItemsToAdd" multiple size="6">
			<c:forEach items="${requestScope.allItems}" var="currentitem">
				<option value="${currentitem.id}">${currentitem.maker} | ${currentitem.model} | ${currentitem.category}</option>
			</c:forEach>
		</select><br /><br /> 
		<input type="submit" value="Create List and Add Items">
	</form><br /> 
	<a href="index.html">Go add new appliance items instead</a>
</body>
</html>