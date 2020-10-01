<%--
  Created by IntelliJ IDEA.
  User: sumee
  Date: 13-09-2020
  Time: 07:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
            integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
            crossorigin="anonymous"
    />

    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
            integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/InfoPage.css"/>
    <title>Info Page</title>
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230"
          type="image/x-icon">

</head>
<body>

<%
    String data = "Opps!! Something went wrong ..";
    if (request.getAttribute("data") != null)
        data = (String) request.getAttribute("data");

%>
<div class="container main-section">
    <div class="status">
        <h1 style="text-align: center;"><%=data%>
        </h1>
        <div class="buttons">
            <a class="btn btn-outline-primary btn-lg" href="index.jsp">
                <i class="fas fa-home"></i> Home</a
            >
            <a class="btn btn-outline-secondary btn-lg" href="userProfile.jsp"
            ><i class="fas fa-id-badge"></i> Profile
            </a>

            <a class="btn btn-outline-success btn-lg" href="ServletRegister"
            ><i class="fas fa-address-book"></i> Register
            </a>


            <a class="btn btn-outline-danger btn-lg" href="Login"
            ><i class="fas fa-sign-in-alt"></i> Login</a
            >
        </div>
    </div>
</div>
</body>
</html>
