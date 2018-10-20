<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
</head>
<body>

<form action="home.do" method="GET">
  <input type="submit" value="Home"/>
</form>

<c:choose>
<c:when test="${deleted == true}">

<h1>Deleted!</h1>

</c:when>

<c:when test="${updated == true}">

<h1>Updated!</h1>

<div>
  <p>${bitmap.id} ${bitmap.name}</p>
  <p>Description: ${bitmap.description}</p>
  <p>Text File Contents:</p>
  <p>${bitmap.bitmapblob}</p>
  
</div>

<form action="update.do" method="GET">
<input type="hidden" value="${bitmap.id}" name="bid"/>
  <input type="submit" value="Update"/>
</form>


<form action="delete.do" method="GET">
<input type="hidden" value="${bitmap.id}" name="bid"/>
  <input type="submit" value="Delete"/>
</form>

</c:when>

<c:otherwise>


<div>
  <p>${bitmap.id} ${bitmap.name}</p>
  <p>Description: ${bitmap.description}</p>
  <p>Text File Contents:</p>
  <p>${bitmap.bitmapblob}</p>
  
</div>

<form action="update.do" method="GET">
<input type="hidden" value="${bitmap.id}" name="bid"/>
  <input type="submit" value="Update"/>
</form>


<form action="delete.do" method="GET">
<input type="hidden" value="${bitmap.id}" name="bid"/>
  <input type="submit" value="Delete"/>
</form>



</c:otherwise>

</c:choose>






</body>
</html>