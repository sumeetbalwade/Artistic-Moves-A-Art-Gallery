<%--
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
</head>
<body>
<div class="data-container">
    <h3 class="font-weight-bold mb-4">Artistic Moves</h3>
    <h4 class="font-weight-bold">View Order</h4>
    <div>
        <input type="text" class="form-control" name="orderId" placeholder="Enter Order Id">
    </div>
    <div>
        <a href="OrderDataFromOrderId.jsp" class="btn btn-primary">View Order</a>
    </div>
</div>
</body>
</html>
