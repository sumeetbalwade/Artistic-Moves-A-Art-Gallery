<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 13-09-2020
  Time: 02:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" import="com.ArtisticMoves.model.User" %>
<html>
<head>
    <title>Change Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ChangePasswordStyles.css">
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230" type="image/x-icon">

</head>
<body>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        User user = (User) session.getAttribute("user");
%>

<section class="ContactUs-page mx-5">
    <div class="container">

        <div class="row">
            <div class="col-lg-7 px-5 pt-5 my-4">
                <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
                <h3>Change Password</h3>

                <!-- form action -->
                <form action="ChangePasswordServlet" method="post" onsubmit="return checkForm(this);">
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
            <div class="col-lg-5 side-menu">
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark my-3 side-btn" href="index.jsp" role="button">
                            Home
                        </a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark my-3 side-btn" href="userProfile.jsp" role="button">
                            Profile
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript">

    function checkForm(form) {

        if (form.newPassword.value != "" && form.newPassword.value == form.confirmPassword.value) {
            if (form.newPassword.value.length < 6) {
                alert("Error: Password must contain at least six characters!");
                form.newPassword.focus();
                return false;
            }
            re = /[0-9]/;
            if (!re.test(form.newPassword.value)) {
                alert("Error: password must contain at least one number (0-9)!");
                form.newPassword.focus();
                return false;
            }
            re = /[a-z]/;
            if (!re.test(form.newPassword.value)) {
                alert("Error: password must contain at least one lowercase letter (a-z)!");
                form.newPassword.focus();
                return false;
            }
            re = /[A-Z]/;
            if (!re.test(form.newPassword.value)) {
                alert("Error: password must contain at least one uppercase letter (A-Z)!");
                form.newPassword.focus();
                return false;
            }
        } else {
            alert("Error: Please check that you've entered and confirmed your password!");
            form.newPassword.focus();
            return false;
        }
        return true;
    }

</script>


<% }%>

</body>
</html>