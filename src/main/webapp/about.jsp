<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 30-09-2020
  Time: 10:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Noto+Serif:ital,wght@1,700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/about.css"/>
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230" type="image/x-icon">

</head>
<body>
<section id="main-container">
    <div id="brand-container">
        <h1>ARTISTIC MOVES</h1><h4>A ART GALLERY</h4>
    </div>

    <div id="navbar-container">
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
                        <a class="nav-link" href="ShowProduct.jsp">Buy Arts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Log In</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div id="about-container">
        <div class="row">
            <div class="col-7">
                <h3>About Us</h3>
                <p><i>ARTISTIC MOVES A ART GALLERY</i> has capacity to help plan, organize
                    , and manage resourse pools and develope resourse estimate. Depending on the
                    sophistication of the software, it can manage estimation and planning, scheduling,
                    cost control and budget management, resourse allocation, collaboration software,
                    cummunication, desision-making, quality management and documentation or administration
                    systems. Today, numerous PC and browser based project management software solotion
                    exist and they are finding their way into almost every type of business</p>
            </div>
            <div class=" col-5 media">
                <img class="align-self-center img-fluid"
                     src="https://images.unsplash.com/photo-1564399580075-5dfe19c205f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
                >
            </div>
        </div>
        <hr>
        <div id="team">
            <h3>Team</h3>
        </div>
        <div class="row">
            <div class="col-md-3  col-xs-6">
                <div class="card">
                    <img src="https://images.pexels.com/photos/5489404/pexels-photo-5489404.jpeg?cs=srgb&dl=pexels-sumeet-balwade-5489404.jpg&fm=jpg" alt="" class="card-img-top">
                    <div class="card-body">
                        <h6 class="card-title">Sumeet Balwade</h6>
                        <a href="https://www.facebook.com/sumeet.balwade">
                            <i class="fa fa-facebook-official" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.instagram.com/sumeetbalwade/?hl=en">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/sumeet-balwade-354738193/?originalSubdomain=in">
                            <i class="fa fa-linkedin-square" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3  col-xs-6">
                <div class="card">
                    <img src="https://images.pexels.com/photos/5489445/pexels-photo-5489445.jpeg?cs=srgb&dl=pexels-sumeet-balwade-5489445.jpg&fm=jpg" alt="" class="card-img-top">
                    <div class="card-body">
                        <h6 class="card-title">Sagar Mahajan</h6>
                        <a href="https://www.facebook.com/saggyy1918117">
                            <i class="fa fa-facebook-official" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.instagram.com/sagar_r_mahajan_/">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/sagar-mahajan-b159a41a2/">
                            <i class="fa fa-linkedin-square" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3  col-xs-6">
                <div class="card">
                    <img src="https://images.pexels.com/photos/5489692/pexels-photo-5489692.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="card-img-top">
                    <div class="card-body">
                        <h6 class="card-title">Deepak Mali</h6>
                        <a href="https://www.facebook.com/deepak.m.mali.7/">
                            <i class="fa fa-facebook-official" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.instagram.com/deepakmalharimali/">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/deepak-mali-324657177/">
                            <i class="fa fa-linkedin-square" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3  col-xs-6">
                <div class="card">
                    <img src="https://images.pexels.com/photos/5489669/pexels-photo-5489669.jpeg?cs=srgb&dl=pexels-sumeet-balwade-5489669.jpg&fm=jpg" alt="" class="card-img-top">
                    <div class="card-body">
                        <h6 class="card-title">Birudev Yele</h6>
                        <a href="https://www.facebook.com/biru.yele.10">
                            <i class="fa fa-facebook-official" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.instagram.com/malharyodha_deva/?hl=en">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                        <a href="https://www.linkedin.com/in/birudev-yele-a26a3319b/">
                            <i class="fa fa-linkedin-square" aria-hidden="true"></i>
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
