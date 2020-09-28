<%@ page import="com.ArtisticMoves.model.Product" %>
<%@ page import="com.ArtisticMoves.DAO.ProductDAO" %><%--
  Created by IntelliJ IDEA.
  User: sumeet-balwade
  Date: 28-09-2020
  Time: 04:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product Details</title>
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500"
            rel="stylesheet"
    />

    <link href="${pageContext.request.contextPath}/css/ViewProductDetails.css" rel="stylesheet" />

</head>
<body>


<%

    if (session.getAttribute("user") == null) {
        response.sendRedirect("Login.jsp");
    } else {
    int id = Integer.parseInt(request.getParameter("productId"));
    //get product detail from product id
    Product p = ProductDAO.getProductFromId(id);
    if (p == null) {
        response.sendRedirect("ShowProduct.jsp");
    } else {

%>


<main class="container">
    <!-- Left Column / Headphones Image -->
    <div class="left-column">
        <img
                data-image="red"
                class="active"
                <% if (p.getProductImage() == null) {%>
                src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/512px-Circle-icons-profile.svg.png"
                <%} else {%>
                src="data:image/jpg;base64,<%=p.getProductImage()%>"
                <%}%>
                alt=""
        />
    </div>

    <!-- Right Column -->
    <div class="right-column">
        <div class="right">
            <!-- Product Description -->
            <div class="product-description">
                <span><%=p.getArtistName()%></span>
                <h1><%=p.getTitle()%></h1>
                <p>
                    <%=p.getContent()%>
                </p>
            </div>

            <!-- Product Configuration -->
            <div class="product-configuration">
                <%
                    if (p.getQuantity()==0) {

                %>
                <h3>Out of Stock</h3>

                <%
                    } else {%>

                <h3>Quantity : <%=p.getQuantity()%></h3>
                <%}%>
            </div>

            <!-- Product Pricing -->
            <div class="product-price">
                <span>₹ <%=p.getPrice()%></span>
            </div>
            <div class="buy-section">
                <form action="PlaceOrderServlet" method="post">
                    <input value="<%=p.getId()%>" hidden name="productId">
                    <input value="<%=p.getPrice()%>" hidden name="productPrice">
                    <button type="submit" class="cart-btn" >Buy Now</button>
                </form>
            </div>
        </div>
    </div>
</main>

<%
    }
    }
%>
<!-- Scripts -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"
        charset="utf-8"
></script>
<script src="script.js" charset="utf-8"></script>
</body>
</html>
