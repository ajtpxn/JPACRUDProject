<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<form action="getBitmap.do" method="GET">
  <input type="text" name="bid"/>
  <input type="submit" value="Find File"/>
</form>

<form action="addBitmap.do" method="GET">
  <input type="submit" value="Add File"/>
</form>

<c:forEach items="${bitmaps}" var="bitmapItem">

<p>
<a href="getBitmap.do?bid=${bitmapItem.id}">${bitmapItem.name}</a>
</p>


</c:forEach>


</body>
</html>