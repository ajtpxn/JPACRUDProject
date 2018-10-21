<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

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



				<p>
				
				<form action="home.do" method="GET">
					<input type="submit" value="Home" class="btn" />
				</form>

				</p>


				<img href="crud.jsp" src="CRUD.png" />

			</div>

		</div>
	</div>

</body>
</html>
