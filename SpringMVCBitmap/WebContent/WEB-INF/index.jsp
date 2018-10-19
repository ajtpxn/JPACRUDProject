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
  <input type="text" name="fid"/>
  <input type="submit" value="Find Bitmap"/>
</form>

<c:forEach items="${bitmaps}" var="bitmapItem">

<p>
<a href="getBitmap.do?fid=${bitmapItem.id}">${bitmapItem.name}</a>
</p>


</c:forEach>


</body>
</html>