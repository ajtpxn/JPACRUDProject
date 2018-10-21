<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change</title>



<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">



</head>
<body>

	<div class="container">
		<div class="p-3 mb-2 bg-dark text-white">

			<div class="py-5 text-center">

				<h2>Story Database</h2>

			</div>


			<form action="home.do" method="GET">
				<input type="submit" value="Home" class="btn" />
			</form>
			<p>
				<br>
				<c:choose>
					<c:when test="${update}">Update Story:

				<form action="returnBitmapValuesUpdate.do" method="GET">
							<table>
								<input type="hidden" value="${bitmap.id}" name="bid" />
								<tr>
									<td><label for="name">Name: </label></td>
									<td><input id="name" type="text" name="name"
										value="${bitmap.name}" class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="desc">Description: </label></td>
									<td><input id="desc" type="text" name="desc"
										value="${bitmap.description}" class="form-control" /><br>
									</td>
								</tr>
								<tr>
									<td><label for="path">Body: </label></td>
									<td><textarea rows="20" cols="80"  id="path" type="text"
											name="textfilecontents" class="form-control">${bitmap.bitmapblob}</textarea></td>
									<td> <input type="submit" value="Submit Story" class="btn" /></td>
								</tr>
							</table>
						</form>


					</c:when>
					<c:otherwise>Add Story:

				<form action="returnBitmapValues.do" method="GET">
							<table>
								<tr>
									<td><label for="name">Name: </label></td>
									<td><input id="name" type="text" name="name"
										class="form-control" /></td>
								</tr>
								<tr>
									<td><label for="desc">Description: </label></td>
									<td><input id="desc" type="text" name="desc"
										class="form-control" /><br></td>
								</tr>
								<tr>
									<td><label for="path">Body: </label></td>
									<td><textarea rows="20" cols="80" id="path" type="text"
											name="textfilecontents" class="form-control">${bitmap.bitmapblob}</textarea></td>
										<td><input type="submit" value="Submit Story" class="btn" /></td>
								</tr>
							</table>
						</form>


					</c:otherwise>
				</c:choose>
			</p>

			<div class="py-5 text-center">

				<a href="crud.jsp"> <img src="CRUD_VERY_SMALL.png" alt="CRUD" >
				</a>


			</div>


		</div>
	</div>




</body>
</html>
