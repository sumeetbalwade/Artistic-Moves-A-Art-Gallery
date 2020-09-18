<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 18-09-2020
  Time: 06:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AddProductStyle.css"/>

</head>

<body>
<section class="ContactUs-page mx-5">
    <div class="container">

        <div class="row">
            <div class="col-lg-7 px-5 pt-5 my-4">
                <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
                <h3>Add Product</h3>

                <!-- form action -->
                <form action="" method="post">
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="text"
                                    placeholder="Product Name"
                                    class="form-control my-3 p-4"
                                    name="productName"
                            />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="number"
                                    placeholder="Quantity"
                                    class="form-control my-3 p-4"
                                    name="productQuantity"
                            />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                            <input
                                    type="number"
                                    placeholder="Price"
                                    class="form-control my-3 p-4"
                                    name="productPrice"
                            />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-10">
                            <div class="form-group">
                                <label class="mt-3">
                                    Product Description</label>
                                <textarea
                                        class="form-control md-3 p-4"
                                        rows="3"
                                        name="productDescription"
                                >
                                    </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-row ">
                        <div class="col-lg-10">
                            <div class="custom-file ">
                                <input
                                        type="file"
                                        class="custom-file-input"
                                        id="inputGroupFile">
                                <label class="custom-file-label"
                                       for="inputGroupFile">Upload Image
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10">
                            <label for="inputGroupFile">Image size should be less than 200kb</label>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-dark mt-3 mb-5">
                                Add Product
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
                        <a class="btn btn-dark my-3 side-btn" href="Login.jsp" role="button">
                            Profile
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
