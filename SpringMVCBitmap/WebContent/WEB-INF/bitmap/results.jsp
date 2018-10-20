<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<div>
  <p>${bitmap.name}
  <p>Description:</p>
  <p>${bitmap.description}</p>
  <p>Text File Contents:</p>
  <p>${bitmap.bitmapblob}</p>
  
</div>

<form action="delete.do" method="GET">
<input type="hidden" value="${bitmap.id}" name="bid"/>
  <input type="submit" value="Delete"/>
</form>



</body>
</html>