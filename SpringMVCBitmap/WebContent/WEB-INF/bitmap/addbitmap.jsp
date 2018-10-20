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
		<input type="submit" value="Home" />
	</form>
	<p>
	<c:choose>
	<c:when test="${update}">Update File:
	
	<form action="returnBitmapValuesUpdate.do" method="GET">
		<table>
		<input type="hidden" value="${bitmap.id}" name="bid"/>
		<tr>
		<td>
		<label for="name">Name: </label> 
		</td>
		<td>
		<input id="name" type="text" name="name" value="${bitmap.name}"/>
		</td>
		</tr>
		<tr>
		<td>
		<label for="desc">Description: </label>
		</td>
		<td>
		<input id="desc" type="text" name="desc" value="${bitmap.description}"/><br>
		</td>
		</tr>
		<tr>
		<td>
		<label for="path">File Path: </label>
		</td>
		<td>
		<input id="path" type="text" name="textfilecontents" value="${bitmap.bitmapblob}"/> 
		<input type="submit" value="Submit File" />
		</td>
		</tr>
		</table>
	</form>
	
	
	</c:when>
	<c:otherwise>Add File:
	
	<form action="returnBitmapValues.do" method="GET">
		<table>
		<tr>
		<td>
		<label for="name">Name: </label> 
		</td>
		<td>
		<input id="name" type="text" name="name"/>
		</td>
		</tr>
		<tr>
		<td>
		<label for="desc">Description: </label>
		</td>
		<td>
		<input id="desc" type="text" name="desc"/><br>
		</td>
		</tr>
		<tr>
		<td>
		<label for="path">File Path: </label>
		</td>
		<td>
		<input id="path" type="text" name="textfilecontents"/> 
		<input type="submit" value="Submit File" />
		</td>
		</tr>
		</table>
	</form>
	
	
	</c:otherwise>
	</c:choose>
	</p>




</body>
</html>