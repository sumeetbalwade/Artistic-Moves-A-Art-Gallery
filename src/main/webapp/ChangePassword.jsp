<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 13-09-2020
  Time: 02:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ChangePasswordStyles.css">
</head>
<body>
<section class="ContactUs-page mx-5">
    <div class="container">

        <div class="row">
            <div class="col-lg-7 px-5 pt-5 my-4">
                <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
                <h3>Change Password</h3>

                <!-- form action -->
                <form action="" method="post">
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="password"
                                    placeholder="Current Password*"
                                    class="form-control my-3 p-4"
                                    name="currentPassword"
                            />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="password"
                                    placeholder="New Password*"
                                    class="form-control my-3 p-4"
                                    name="newPassword"
                            />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="password"
                                    placeholder="Confirm Password*"
                                    class="form-control my-3 p-4"
                                    name="confirmPassword"
                            />
                        </div>
                    </div>



                    <div class="form-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-dark mt-3 mb-5">
                                Change Password
                            </button>
                        </div>
                    </div>

                </form>
            </div>
            <div class="col-lg-5 side-menu" >
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark my-3 side-btn" href="index.jsp" role="button">
                            Home
                        </a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark my-3 side-btn" href="#" role="button">
                            Profile
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
