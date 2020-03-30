<%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 03/10/2020
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm | Online Examination</title>


    <style>
        body{
            width: 100%;
            height: 100vh;
            background-image: url(assets/images/background.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-color: rgb(0,0,0,.6);
            background-blend-mode: overlay;
            background-attachment: fixed;
        }
        h1{
            color: white;
            font-weight: bold;
        }
        .navbar-custom{
            background-color: black;
        }
        a{
            color:white;
            font-family: sans-serif;
        }
        .modal-content{
            background-color: black;
            opacity: 0.80;
            padding: 30px 10px;
        }
        .main-section{
            margin: 0 auto;
            margin-top: 130px;
            padding: 0;
        }
        .Ques{
            color: white;
            font-size: 40px;
            font-family: sans-serif;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group input{
            height: 40px;
            border-radius: 5px;
            border: 0;
            font-size: 18px;
        }
        .form-group{
            margin-bottom: 25px;
        }
        .wrong{
            color: red;
        }
        .acus{
            font-size: 20px;
            font-family: sans-serif;
        }
    </style>



</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark navbar-custom">
    <h1>Online Exanimation</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="Home.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link acus">Login</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link acus">SignUp</a>
            </li><li class="nav-item">
            <a href="About.jsp" class="nav-link acus">About</a>
        </li>
        </ul>
    </div>
</nav>
<div class="modal-dialog text-center">
    <div class="main-section col-sm-8">
        <div class="modal-content">
            <div class="wrong">
                <h5>${msg}</h5>
            </div>
            <div class="Ques">
                Enter Code
            </div>
            <form class="col-12" action="confirmEmail" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Enter code" name="code" required>
                </div>
                <button class="btn btn-secondary" type="submit">Submit</button>
            </form>
        </div>
    </div>
</div>




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
