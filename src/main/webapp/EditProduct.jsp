<%@ page import="com.ArtisticMoves.model.Product" %>
<%@ page import="com.ArtisticMoves.DAO.ProductDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 20-09-2020
  Time: 03:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.ArtisticMoves.DAO.ProductDAO" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/EditProduct.css"/>
    <link rel="shortcut icon" href="https://www.linkpicture.com/view.php?img=LPic5f7570c13ea051507603230" type="image/x-icon">

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
        response.sendRedirect("ViewProduct.jsp");
    } else {

%>
<section class="editImage-page mx-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 px-5 pt-5 my-4">
                <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
                <h3>Edit Product</h3>
                <!-- form action -->
                <form action="EditProductServlet" method="post">
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="text"
                                    class="form-control my-3 p-4"
                                    name="productTitle"
                                    value="<%=p.getTitle()%>"
                            />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="number"
                                    class="form-control my-3 p-4"
                                    name="productQuantity"
                                    value="<%=p.getQuantity()%>"
                            />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="number"
                                    class="form-control my-3 p-4"
                                    name="productPrice"
                                    value="<%=p.getPrice()%>"
                            />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-10">
                            <div class="form-group">
                                <label class="mt-3">
                                    Product Description</label>
                                <input
                                        type="text"
                                        class="form-control my-3 p-4"
                                        name="productContent"
                                        value="<%=p.getContent()%>"
                                />
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="productId" value="<%=p.getId()%>">

                    <div class="form-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-dark mt-3 mb-5">
                                Edit
                            </button>
                        </div>
                    </div>

                </form>
            </div>
            <div class="col-lg-6 side-menu">
                <div class="media">
                    <img class="card-img align-self-center img-fluid"
                        <% if (p.getProductImage() == null) {%>
                         src="https://images.pexels.com/photos/3109807/pexels-photo-3109807.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                        <%} else {%>
                         src="data:image/jpg;base64,<%=p.getProductImage()%>"
                        <%}%>

                         alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<%
    }
    }
%>
</body>
</html>
