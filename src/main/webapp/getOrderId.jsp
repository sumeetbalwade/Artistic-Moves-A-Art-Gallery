<%@ page import="com.ArtisticMoves.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 28-09-2020
  Time: 09:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/getOrderId.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230" type="image/x-icon">

</head>
<body>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        User user = (User) session.getAttribute("user");
        if (user.getUserType() == "customer") {
            response.sendRedirect("userProfile.jsp");

        }
%>


<div class="data-container">
    <h3 class="font-weight-bold mb-4">Artistic Moves</h3>
    <h4 class="font-weight-bold">View Order</h4>

    <form action="findOrderServlet" method="post">

        <div>
            <input type="text" class="form-control" name="orderId" placeholder="Enter Order Id">
        </div>
        <div>
            <button class="btn btn-primary" type="submit">View Order</button>
        </div>

    </form>
</div>

<% } %>
</body>
</html>
