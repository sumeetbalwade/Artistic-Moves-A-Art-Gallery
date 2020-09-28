<%--
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


<main class="container">
    <!-- Left Column / Headphones Image -->
    <div class="left-column">
        <img
                data-image="red"
                class="active"
                src="https://static.toiimg.com/thumb/72975551.cms?width=680&height=512&imgsize=881753"
                alt=""
        />
    </div>

    <!-- Right Column -->
    <div class="right-column">
        <div class="right">
            <!-- Product Description -->
            <div class="product-description">
                <span>Sumeet Balwade</span>
                <h1>Sans of Art</h1>
                <p>
                    The preferred choice of a vast range of acclaimed DJs. Punchy,
                    bass-focused sound and high isolation. Sturdy headband and on-ear
                    cushions suitable for live performance
                </p>
            </div>

            <!-- Product Configuration -->
            <div class="product-configuration">
                <h3>Quantity : 10</h3>
            </div>

            <!-- Product Pricing -->
            <div class="product-price">
                <span>Rs. 240</span>
            </div>
            <div class="buy-section">
                <a href="#" class="cart-btn">Buy Now</a>
            </div>
        </div>
    </div>
</main>

<!-- Scripts -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"
        charset="utf-8"
></script>
<script src="script.js" charset="utf-8"></script>
</body>
</html>
