<%@ page import="com.ArtisticMoves.model.User" %>
<%@ page import="com.ArtisticMoves.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ArtisticMoves.DAO.ProductDAO" %><%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 18-09-2020
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ViewProduct.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230"
          type="image/x-icon">

</head>
<body>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
        User user = (User) session.getAttribute("user");
        List<Product> productList = (List<Product>) ProductDAO.getProduct(user.getId());
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
            <% for (Product p : productList) {%>
            <div class="col-lg-6 col-md-12 my-3">
                <div class="card">
                    <div class="row p-2">
                        <div class="col-5 media">
                            <img class="card-img align-self-center img-fluid"
                                 src="data:image/jpg;base64,<%=p.getProductImage()%>"
                                 alt="">
                        </div>


                        <div class="col-7">
                            <!-- Product title -->
                            <h3><%=p.getTitle()%>
                            </h3>
                            <!-- User Name -->
                            <h6>Artist : <%=p.getArtistName()%>
                            </h6>
                            <hr>
                            <!-- Product Description -->
                            <p><%=p.getContent()%>
                            </p>
                            <!-- Product Price -->
                            <div class="price">
                                Price : &#8377; <%=p.getPrice()%>
                            </div>
                            <!-- Product Quantity -->
                            Quantity : <%=p.getQuantity()%>
                            <div class="row">
                                <!-- Edit product detail -->
                                <a href="EditProduct.jsp?productId=<%=p.getId()%>" class="btn btn-primary m-2">Edit</a>
                                <!--Delete Product -->
                                <form action="DeleteProductServlet" method="post">
                                    <input type="hidden" name="productId" value="<%=p.getId()%>">
                                    <button type="submit" class="btn btn-danger m-2">Delete</button>
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
