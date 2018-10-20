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

<form action="home.do" method="GET">
  <input type="submit" value="Home"/>
</form>

<form action="returnBitmapValues.do" method="GET">
  <input type="text" name="name"/><br>



  <input type="text" name="desc"/><br>



  <input type="text" name="textfilecontents"/>
  <input type="submit" value="Submit File"/>
</form>




</body>
</html>