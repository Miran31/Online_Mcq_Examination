<%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 02/25/2020
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-free-5.12.1-web/fontawesome-free-5.12.1-web/css/all.css">
    <title>SignUp | Online Examination</title>

    <style>
        body{
            width: 100%;
            height: 100vh;
            background-image: url(assets/images/background.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-color: rgb(0,0,0,.6);
            background-blend-mode: overlay;
            font-family: sans-serif;
        }
        .main-section{
            margin: 0 auto;
            margin-top: 130px;
            padding: 0;
        }
        .modal-content{
            background-color: black;
            opacity: .85;
            padding: 30px 10px;
        }
        .form-group{
            margin-bottom: 25px;
        }
        .form-group input{
            height: 40px;
            border-radius: 5px;
            border: 0;
            font-size: 18px;
        }
        .signup{
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            color: white;
            font-size: 40px;
        }
        h1{
            color: white;
            font-weight: bold;
        }
        .navbar-custom{
            background-color: black;
        }
        .input-group-prepend span{
            position: absolute;
            height: 40px;
            width: 40px;
            color: black;
            border:0 !important;
        }
        .form-group input{
            height: 40px;
            border-radius: 5px;
            border: 0;
            font-size: 18px;
            padding-left: 50px;
        }
        .hello a{
            text-decoration: none;
        }
        .hello{
            color: white;
        }
        .acus{
            font-size: 20px;
            font-family: sans-serif;
        }
    </style>
</head>
<body>

<script>
    function myfun() {
        var a = document.getElementById("password").value;
        var b = document.getElementById("repassword").value;
        if(a==""){
            document.getElementById("message").innerHTML="Password character must be 8-32 character";
            return false;
        }
        if (a.length<8){
            document.getElementById("message").innerHTML="Password character must be 8-32 character";
            return false;
        }
        if (a.length>32){
            document.getElementById("message").innerHTML="Password character must be 8-32 character";
            return false;
        }
        if (a != b){
            document.getElementById("remessage").innerHTML="Password does not match";
            return false;
        }
    }
</script>


<nav class="navbar fixed-top navbar-expand-sm navbar-dark navbar-custom">
    <h1>Online Examination</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="Home.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="Login.jsp" class="nav-link acus">Login</a>
            </li>
            <li class="nav-item">
                <a href="Reg.jsp" class="nav-link acus">SignUp</a>
            </li><li class="nav-item">
            <a href="About.jsp" class="nav-link acus">About</a>
        </li>
        </ul>
    </div>
</nav>
<div class="modal-dialog text-center">
    <div class="col-sm-8 main-section">
        <div class="modal-content">
            <div class="col-12 signup">
                Sign Up
            </div>
            <form class="col-12" action="Registration" method="post" onsubmit="return myfun()">
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="First Name" name="firstName" required>
                </div>
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" placeholder="Last Name" name="lastName" required>
                </div>
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="far fa-envelope"></i></span>
                    </div>
                    <input type="email" class="form-control" placeholder="Email Address" name="email" required>
                </div>
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input type="password" class="form-control" placeholder="New Password" id="password" name="password" value="" required>
                    <span style="color: red; font-size: small" id="message"></span>
                </div>
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <input type="password" class="form-control" placeholder="Confirm Password" id="repassword" name="repassword" value="">
                    <span style="color: red; font-size: small" id="remessage"></span>
                </div>
                <button type="submit" class="btn btn-secondary"></i>SignUp</button>
            </form>
            <div class="col-12 hello">
                Already have an account?
                <a href="Login.jsp">Login Here</a>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>


