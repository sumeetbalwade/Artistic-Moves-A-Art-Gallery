<%@ page import="java.util.List" %>
<%@ page import="com.ArtisticMoves.model.Product" %>
<%@ page import="com.ArtisticMoves.DAO.ProductDAO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 26-09-2020
  Time: 05:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ShowProductStyle.css"/>
</head>
<body>
<%

    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        List<Integer> CartProduct = (List<Integer>) session.getAttribute("cart");
        if (CartProduct == null) {
            response.sendRedirect("index.jsp");
        } else {

            List<Product> productList = new ArrayList<>();
            for (int i : CartProduct) {
                productList.add(ProductDAO.getProductFromId(i));
            }


            if (productList == null) {
                response.sendRedirect("index.jsp");
            } else {
%>
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
                <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contact Us</a>
            </li>
        </ul>
    </div>
</nav>
<div class="data-container">
    <H1 class="heading" style="color: white">Your Cart</H1>
    <div class="row">
        <% for (Product p : productList) {%>
        <div class="col-xl-4 col-md-12 my-4">
            <div class="card" style="border-radius: 40px;">
                <div class="media">
                    <img class="card-img align-self-center img-fluid"
                        <% if (p.getProductImage() == null) {%>
                         src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/512px-Circle-icons-profile.svg.png"
                        <%} else {%>
                         src="data:image/jpg;base64,<%=p.getProductImage()%>"
                        <%}%>
                    >
                </div>
                <div class="content">
                    <!-- Product title -->
                    <h3 class="title">
                        <%=p.getTitle()%>
                    </h3>
                    <div class="btn-row">
                        <form action="RemoveFromCartServlet" method="post" style="display: inline">
                            <input value="<%=p.getId()%>" hidden name="productId">
                            <button type="submit" class="btn btn-primary m-2">Remove</button>
                        </form>

                        <a href="ViewProductDetails.jsp?productId=<%=p.getId()%>" style="display: inline"
                           class="btn btn-primary m-2">View</a>
                    </div>
                </div>
            </div>
        </div>
        <%} %>
    </div>
</div>
<%
            }
        }
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
