<%@ page import="com.ArtisticMoves.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 13-09-2020
  Time: 01:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.ArtisticMoves.model.User" %>
<html>
<head>
    <title>Edit profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/EditProfileStyles.css">
</head>
<body>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        User user = (User) session.getAttribute("user");
%>
<div class="row">
    <div id="registrationForm" class="col-lg-7">
        <h1>Edit Profile</h1>
        <form action="EditUserProfile" method="post">
            <h3>Personal Detail</h3>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" name="firstName" value="<%=user.getFirstName()%>">
                </div>
                <div class="col">
                    <input type="text" class="form-control" name="lastName" value="<%=user.getLastName()%>">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="email" class="form-control" name="email" value="<%=user.getEmail()%>">
                </div>
                <div class="col">
                    <input type="text" class="form-control" name="contactNumber" value="<%=user.getContactNumber()%>">
                </div>
            </div>

            <h3>Address Detail</h3>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" name="address" value="<%=user.getAddress()%>">
                </div>
                <div class="col">
                    <input type="text" class="form-control" name="city" value="<%=user.getCity()%>">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" name="pinCode" value="<%=user.getPinCode()%>">
                </div>
                <div class="col">
                    <input type="text" class="form-control" name="state" value="<%=user.getState()%>">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input class="btn btn-dark" type="submit" value="Submit">
                </div>
            </div>
        </form>
    </div>

    <div id="homeButton" class="col-lg-5 text-center">
        <div class="row">
            <a href="index.jsp" class="btn btn-dark">Home</a>
        </div>
        <div class="row">
            <a href="userProfile.jsp" class="btn btn-dark">Profile</a>
        </div>
    </div>
</div>

<% }%>

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
