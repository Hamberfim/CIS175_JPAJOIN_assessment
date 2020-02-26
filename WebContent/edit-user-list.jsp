<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit a User list</title>
</head>
<body>
<form action = "editExistingListServlet" method="post">
List Name: <input type ="text" name = "listName" value="${listToEdit.listName}"><br />
Trip date: <input type ="text" name = "month" placeholder="mm" size="4" value="${listToEdit.tripDate.getMonthValue()}"> <input type ="text" name = "day" placeholder="dd" size="4" value="${listToEdit.tripDate.getDayOfMonth()}">, <input type ="text" name = "year" placeholder="yyyy" size="4" value="${listToEdit.tripDate.getYear()}">
Shopper Name: <input type = "text" name = "shopperName" value="${listToEdit.shopper.shopperName}"><br />
<input type = "hidden" name = "id" value="${listToEdit.id}">
Current Items in this users shopping list:<br />
<select name="currentItems" multiple size="6">
<c:forEach var = "listVal" items = "${listToEdit.listOfItems}">
          <option value = "${listVal.id}">${listVal.maker} | ${listVal.model} | ${listVal.category}</option>          
  </c:forEach>
</select>
<br />
Addable Items:<br />
<select name="itemsToAdd" multiple size="6">
<c:forEach items="${requestScope.allItemsToAdd}" var="currentitem">
   <option value = "${currentitem.id}">${currentitem.maker} | ${currentitem.model} | ${currentitem.category}</option>
</c:forEach>
</select>

<br />
<input type = "submit" value="Edit List and Edit Items">
</form>
<a href = "index.html">Insert a new appliance item in the selectable inventory</a><br /><br />
</body>

</html>