 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/loginStyles.css"
    />
  </head>
  <body>
    <section class="Login-Page mx-5">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-lg-7 px-5 pt-5 my-4">
            <h1 class="font-weight-bold mb-4">Artistic Moves</h1>
            <h4>Sign into your account</h4>
            <form action="Login" method="post">
              <div class="form-row">
                <div class="col-lg-7">
                  <input
                    type="email"
                    placeholder="Email Address"
                    class="form-control my-3 p-4"
                    name="emailAddress"
                  />
                </div>
              </div>
              <div class="form-row">
                <div class="col-lg-7">
                  <input
                    type="password"
                    placeholder="Password"
                    class="form-control my-3 p-4"
                    name="password"
                  />
                </div>
              </div>
              <div class="form-row">
                <div class="col-lg-3 ml-5">
                  <div class="form-check">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="userType"
                      value="customer"
                      id="Customer"
                      checked
                    />
                    <label class="form-check-label" for="Customer">
                      Customer
                    </label>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="form-check">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="userType"
                      value="admin"
                      id="Admin"
                    />
                    <label class="form-check-label" for="Admin">
                      Admin
                    </label>
                  </div>
                </div>
              </div>

              <div class="form-row">
                <div class="col-lg-7">
                  <button type="submit" class="login-btn mt-3 mb-5">
                    Login
                  </button>
                </div>
              </div>
              <a href="#">Forgot Password ?</a>
              <p>Don't have a Account? <a href="#">Register Here</a></p>
            </form>
          </div>
          <div class="col-lg-5">
            <img
              src="https://images.pexels.com/photos/2505693/pexels-photo-2505693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
              height="1920"
              width="1080"
              class="img-fluid"
              alt="Login-Image"
            />
          </div>
        </div>
      </div>
    </section>

    <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
      integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
