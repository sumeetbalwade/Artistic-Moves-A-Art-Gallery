<%--
  Created by IntelliJ IDEA.
  User: sumee
  Date: 20-09-2020
  Time: 03:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" import="com.ArtisticMoves.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ArtisticMoves.DAO.UserDAO" %>
<html>
<head>
    <title>All Users</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ViewProduct.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">

</head>
<body>


<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        User user = (User) session.getAttribute("user");
        if (user.getUserType().equals("admin")) {
            List<User> userList = (List<User>) UserDAO.getUser();
            if (userList.size() == 0) {
                response.sendRedirect("userProfile.jsp");
            }
%>


<div class="mx-5 my-5 px-5 py-5">
    <nav class="navbar navbar-expand-lg nav-container ">
        <button class="navbar-toggler navbar-dark"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon btn-lg"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav container d-flex justify-content-around">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="userProfile.jsp">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddProduct.jsp">Add Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="LogOutServlet">Log Out</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="data-container">
        <div class="row">
            <% for (User p : userList) {%>
            <div class="col-lg-6 col-md-12 my-3">
                <div class="card">
                    <div class="row p-2">
                        <div class="col-5 media">
                            <img class="card-img align-self-center img-fluid"
                                <% if (user.getProfilePicture() == null) {%>
                                 src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/512px-Circle-icons-profile.svg.png"
                                <%} else {%>
                                 src="data:image/jpg;base64,<%=p.getProfilePicture()%>"
                                <%}%>

                            >
                        </div>
                        <div class="col-7">
                            <!-- Full Name -->
                            <h3><%=p.getFirstName() + " " + p.getLastName()%>
                            </h3>
                            <!-- Email -->
                            <h6><%=p.getEmail()%>
                            </h6>
                            <hr>
                            <!-- Address -->
                            <p><%=p.getAddress() + " " + p.getCity() + " " + p.getState() + " " + p.getPinCode()%>
                            </p>
                            <!-- Contact Number -->
                            <div class="price">
                                Mobile : <%=p.getContactNumber()%>
                            </div>
                            <!-- User Type -->
                            UserTypes : <%=p.getUserType()%>
                            <div class="row">
                                <!-- Delete User detail -->
                                <form action="DeleteProductServlet" method="post">
                                    <input type="hidden" name="productId" value="<%= p.getId()%>">
                                    <button type="submit" class="btn btn-danger m-2 ml-4">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</div>

<% }
}
%>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


</body>
</html>
