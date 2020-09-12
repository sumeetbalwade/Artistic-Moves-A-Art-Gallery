<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 11-09-2020
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/registerStyles.css">
</head>
<body>

<div class="row main">
    <div id="registrationForm" class="col-lg-9">
        <h1>Registration Form</h1>
        <form action="ServletRegister" method="post" onsubmit="return checkForm(this);">
            <h3>Personal Detail</h3>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="First name*" name="firstName">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Last name*" name="lastName">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="email" class="form-control" placeholder="Email*" name="email">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Contact Number*" name="contactNumber">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="password" class="form-control" placeholder="Password*" name="password">
                </div>
                <div class="col">
                    <input type="password" class="form-control" placeholder="Confirm Password*" name="confPassword">
                </div>
            </div>

            <h3>Address Detail</h3>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Address*" name="address">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="City*" name="city">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Pincode*" name="pinCode">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="State*" name="state">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <input class="btn btn-dark" type="submit" value="Submit">
                </div>
                <div class="col">
                    <input class="btn btn-dark" type="reset" value="Reset">
                </div>
            </div>
        </form>
    </div>

    <div id="homeButton" class="col-lg-3 text-center">
        <div class="row">
            <button type="button" class="btn btn-dark">Home</button>
        </div>
        <div class="row">
            <a href="Login.jsp">
                <button type="button" class="btn btn-dark">LogIn</button>

            </a>
        </div>

    </div>
</div>



<script type="text/javascript">

    function checkForm(form)
    {
        if(form.email.value == "") {
            alert("Error: Username cannot be blank!");
            form.email.focus();
            return false;
        }

        if(form.contactNumber.value.length != 10) {
            alert("Error: INVALID MOBILE NUMBER!");
            form.contactNumber.focus();
            return false;
        }

        if(form.password.value != "" && form.password.value == form.confPassword.value) {
            if(form.password.value.length < 6) {
                alert("Error: Password must contain at least six characters!");
                form.password.focus();
                return false;
            }
            if(form.password.value == form.email.value) {
                alert("Error: Password must be different from Username!");
                form.password.focus();
                return false;
            }
            re = /[0-9]/;
            if(!re.test(form.password.value)) {
                alert("Error: password must contain at least one number (0-9)!");
                form.password.focus();
                return false;
            }
            re = /[a-z]/;
            if(!re.test(form.password.value)) {
                alert("Error: password must contain at least one lowercase letter (a-z)!");
                form.password.focus();
                return false;
            }
            re = /[A-Z]/;
            if(!re.test(form.password.value)) {
                alert("Error: password must contain at least one uppercase letter (A-Z)!");
                form.password.focus();
                return false;
            }
        } else {
            alert("Error: Please check that you've entered and confirmed your password!");
            form.password.focus();
            return false;
        }


        return true;
    }

</script>

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
