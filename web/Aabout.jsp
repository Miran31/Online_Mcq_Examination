<%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 02/25/2020
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <title>About | Online Mock Test</title>



    <style>
        .team{
            text-align: center;
            font-size: 50px;
            text-decoration: underline;
            font-family: sans-serif;
            margin-bottom: 50px;
            margin-top: 80px;
        }
        img{
            height: 300px;
        }
        h1{
            color: white;
            font-weight: bold;
        }
        h1{
            color: white;
        }
        .navbar-custom{
            background-color: black;
        }
        .nav-link:hover{
            color: white;
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
        .acus{
            font-family: sans-serif;
            font-size: 20px;
        }
        .messh{
            color: green;
        }
        .aaa{
            margin-top: 20px;
        }
        .design{
            margin-top: 75px;
            text-align: center;
            font-size: 40px;
            font-family: sans-serif;
            color: #01c0c8;
        }
    </style>



</head>
<body>
<nav class="navbar fixed-top navbar-expand-sm navbar-dark navbar-custom">
    <h1>Online Mock Test</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="adminHome.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="userlist.jsp" class="nav-link acus">User</a>
            </li>
            <li class="nav-item">
                <a href="QuestionList.jsp" class="nav-link acus">Questions</a>
            </li>
            <li class="nav-item">
                <a href="Aabout.jsp" class="nav-link acus">About</a>
            </li>
            <li class="nav-item">
                <a href="Login.jsp" class="nav-link acus">Log Out</a>
            </li>
        </ul>
    </div>
</nav>

<div class="team">
    Our Team
</div>
<div class="container">
    <div class="row">
        <!-- Team Member 1 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow">
                <img src="assets/images/miran.jpg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title mb-0">Ashikur Rahman</h5>
                    <div class="card-text text-black-50 tl">Developer</div>
                </div>
            </div>
        </div>
        <!-- Team Member 2 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow">
                <img src="assets/images/Rafi.jpeg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title mb-0">Rafiul Hasan</h5>
                    <div class="card-text text-black-50 tl">Developer</div>
                </div>
            </div>
        </div>
        <!-- Team Member 3 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow">
                <img src="assets/images/dhina.jpeg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title mb-0">Jannatul Ferdoush</h5>
                    <div class="card-text text-black-50 tl">Developer</div>
                </div>
            </div>
        </div>
        <!-- Team Member 4 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-0 shadow">
                <img src="assets/images/munni.jpeg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title mb-0 teaml">Tazneen Akter</h5>
                    <div class="card-text text-black-50 tl">Developer</div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>

