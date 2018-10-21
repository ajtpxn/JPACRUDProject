<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="UTF-8">
          <title>Results</title>

          <!-- Bootstrap core CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"></head>
          <body>

            <div class="container">
              <div class="p-3 mb-2 bg-dark text-white">

                <div class="py-5 text-center">

                  <h2>Story Database</h2>

                </div>

                <form action="home.do" method="GET">
                  <input type="submit" value="Home" class="btn"/>
                </form>
                
                <br>

                <c:choose>
                  <c:when test="${deleted}">

                    <h1>${bitmap.id} Deleted!</h1>

                  </c:when>

                  <c:when test="${updated}">

                    <h1>Updated!</h1>

                    <div>
                      <p>${bitmap.id} ${bitmap.name}</p>
                      <p>Description: ${bitmap.description}</p>
                      <p>Body:</p>
                      <p>${bitmap.bitmapblob}</p>

                    </div>

                    <form action="update.do" method="GET">
                      <input type="hidden" value="${bitmap.id}" name="bid"/>
                      <input type="submit" value="Update" class="btn"/>
                    </form>

                    <br>

                      <form action="delete.do" method="GET">
                        <input type="hidden" value="${bitmap.id}" name="bid"/>
                        <input type="submit" value="Delete" class="btn"/>
                      </form>

                    </c:when>

                    <c:when test="${added}">

                      <h1>Added!</h1>

                      <div>
                        <p>${bitmap.id} ${bitmap.name}</p>
                        <p>Description: ${bitmap.description}</p>
                        <p>Body:</p>
                        <p>${bitmap.bitmapblob}</p>

                      </div>

                      <form action="update.do" method="GET">
                        <input type="hidden" value="${bitmap.id}" name="bid"/>
                        <input type="submit" value="Update" class="btn"/>
                      </form>
                      
                      <br>

                      <form action="delete.do" method="GET">
                        <input type="hidden" value="${bitmap.id}" name="bid"/>
                        <input type="submit" value="Delete" class="btn"/>
                      </form>

                    </c:when>

                    <c:otherwise>

                      <div>
                        <p>${bitmap.id} ${bitmap.name}</p>
                        <p>Description: ${bitmap.description}</p>
                        <p>Body:</p>
                        <p>${bitmap.bitmapblob}</p>

                      </div>

                      <form action="update.do" method="GET">
                        <input type="hidden" value="${bitmap.id}" name="bid"/>
                        <input type="submit" value="Update" class="btn"/>
                      </form>
                      
                      <br>

                      <form action="delete.do" method="GET">
                        <input type="hidden" value="${bitmap.id}" name="bid"/>
                        <input type="submit" value="Delete" class="btn"/>
                      </form>

                    </c:otherwise>

                  </c:choose>

                </div>
              </div>

            </body>
          </html>
