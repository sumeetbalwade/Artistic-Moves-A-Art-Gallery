<%@ page import="com.ArtisticMoves.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ArtisticMoves.DAO.ProductDAO" %>
<%@ page import="com.ArtisticMoves.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page
    </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Noto+Serif:ital,wght@1,700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>

</head>
<body>
<%
    List<Product> products = (List<Product>) ProductDAO.getLatestProduct();

%>
<section id="main-container">
    <div id="brand-container">
        <a href="index.jsp">
            <h1>ARTISTIC MOVES</h1><h4>A ART GALLERY</h4>
        </a>
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
                    <%
                        User user = (User) session.getAttribute("user");
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="ShowProduct.jsp">Buy Arts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                    </li>
                    <%
                        if (user == null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Register.jsp">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Log In</a>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="Cart.jsp">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="userProfile.jsp">Profile</a>
                    </li>
                    <li>
                        <a class="nav-link" href="LogOutServlet">Log Out</a>
                    </li>
                    <%}%>
                </ul>
            </div>
        </nav>
    </div>

    <div id="middle-container">
        <p id="quote">If people only knew how hard I work to gain my mastery. It wouldn't seem so wonderful at all.</p>
    </div>
    <div id="images-container">
        <div class="row">
            <% for (Product p : products) {%>
            <div class=" col-md-4 col-xs-6">
                <div class="media">
                    <img class="card-img align-self-center img-fluid"
                         src="data:image/jpg;base64,<%=p.getProductImage()%>"
                         alt="">
                </div>
            </div>
            <%}%>
        </div>
    </div>
    <div id="footer-container">
        <div class="row">
            <div class="col-md-4">
                <h3>ARTISTIC MOVES</h3><h5>A ART GALLERY</h5>
            </div>
            <div class="col-md-4">
                <h6>About Us</h6>
                <p>Artistic Moves A Art Gallery is a platform where artist can show thier arts</p>
            </div>
            <div class="col-md-4">
                <h6 class="ml-3">Follow Us</h6>
                <a href="">
                    <i class="fa fa-lg fa-facebook-official" aria-hidden="true"></i>
                </a>
                <a href="">
                    <i class="fa fa-lg fa-instagram" aria-hidden="true"></i>
                </a>
                <a href="">
                    <i class="fa fa-lg fa-twitter-square" aria-hidden="true"></i>
                </a>
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
