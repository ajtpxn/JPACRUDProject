<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
          <title>Home</title>

          <!-- Bootstrap core CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"></head>
          <body class="p-3 mb-2 bg-dark text-white">

            <div class="container">
              <div class="p-3 mb-2 bg-dark text-white">

                <div class="py-5 text-center">

                  <h2>Story Database </h2>
                  
                </div>
                  
                  


                <form action="getBitmap.do" method="GET">

                  <table>
                    <tr>
                      <td>

                        <input type="text" name="bid" class="form-control"/>
                        </td>

                        <td>
                          <input type="submit" value="Find Story" class="btn"/>

                        </td>
                      </tr>
                    </table>

                  </form>

                  <br>

                    <form action="addBitmap.do" method="GET">
                      <input type="submit" value="Add Story" class="btn"/>
                    </form>

                    <br>

                      <c:forEach items="${bitmaps}" var="bitmapItem">

                        <p>
                          <a href="getBitmap.do?bid=${bitmapItem.id}">${bitmapItem.id} ${bitmapItem.name} - ${bitmapItem.description}</a>
                        </p>

                      </c:forEach>

			<div class="py-5 text-center">

				<a href="crud.jsp"> <img src="CRUD_VERY_SMALL.png" alt="CRUD">
				</a>


			</div>

		</div>
                  </div>

                </body>
              </html>
