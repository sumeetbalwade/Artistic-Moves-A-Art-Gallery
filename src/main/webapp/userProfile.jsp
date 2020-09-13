<%--
  Created by IntelliJ IDEA.
  User: sumee
  Date: 13-09-2020
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
          integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
          crossorigin="anonymous" />

    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserProfile.css" />
    <title>Profile</title>
</head>
<body>
<section class="Login-Page mx-5">
    <div class="container">
        <div class="row no-gutters row-main">
            <div class="col-lg-4 right-section">
                <div class="profile-section">
                    <div class="sidebar">

                        <a href="#">
                            <div class="sidebar-card">
                                <i class="fas fa-home"></i>Home
                            </div>
                        </a>
                        <a href="#">
                            <div class="sidebar-card">
                                <i class="fas fa-user-edit"></i>Edit Profile
                            </div>
                        </a>
                        <a href="#">
                            <div class="sidebar-card">
                                <i class="fas fa-gifts"></i>Add Product
                            </div>
                        </a>
                        <a href="#">
                            <div class="sidebar-card">
                                <i class="fas fa-key"></i>Change Password
                            </div>
                        </a>
                        <a href="#">
                            <div class="sidebar-card">
                                <i class="fas fa-sign-out-alt"></i></i>Log Out
                            </div>
                        </a>
                    </div>

                </div>
            </div>
            <div class="col-lg-8 py-2 px-3">
                <div class="profile-section">
                    <div class="profile-card">
                        <img
                                src="https://avatars2.githubusercontent.com/u/41995680?s=400&u=5b7ef73a4be433a2dc651fcb44865681954b90fd&v=4"
                                class="img-fluid profile-image" alt="Profile-Image" />
                        <h1>Sumeet Balwade</h1>
                        <div class="row mt-3">
                            <div class="col-lg-6 px-3">
                                <h6>Email</h6>
                                <p>balwadesr@gmail.com</p>
                                <h6>Contact Number</h6>
                                <p>+91 8888987679</p>

                            </div>
                            <div class="col-lg-6 px-3">
                                <h6>Address</h6>
                                <h4 class="address-para">H-701 Sukhwani Palms Wagholi Pune - 412207</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>


</body>
</html>
