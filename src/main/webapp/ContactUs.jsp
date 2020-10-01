<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 12-09-2020
  Time: 02:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Contact us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ContactUsStyle.css">
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230" type="image/x-icon">

</head>
<body>
<section class="ContactUs-page mx-5">
    <div class="container">

        <div class="row">
            <div class="col-lg-7 px-5 pt-5 my-4">
                <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
                <h3>Contact Us</h3>

                <!-- form action -->
                <form action="" method="post">
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="Name"
                                    placeholder="Name"
                                    class="form-control my-3 p-4"
                                    name="name"
                            />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="email"
                                    placeholder="Email"
                                    class="form-control my-3 p-4"
                                    name="email"
                            />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                                    <textarea
                                            type="Name"
                                            placeholder="Message"
                                            class="form-control my-3 p-4"
                                            name="message"
                                    ></textarea>
                        </div>
                    </div>


                    <div class="form-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-dark mt-3 mb-5">
                                Submit
                            </button>
                        </div>
                    </div>

                </form>
            </div>
            <div class="col-lg-5 side-menu">
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark side-btn" href="index.jsp" role="button">
                            Home
                        </a>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-7">
                        <a class="btn btn-dark side-btn" href="Login.jsp" role="button">
                            LogIn
                        </a>
                    </div>
                    <div class="col-lg-7">
                        <a class="btn btn-dark side-btn" href="Register.jsp" role="button">
                            Register
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


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
