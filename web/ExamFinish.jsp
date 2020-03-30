<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.12.1-web/fontawesome-free-5.12.1-web/css/all.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <title>Admin Home | Online Examination</title>



    <style>
        h1{
            color: white;
            font-weight: bold;
        }
        .navbar-custom{
            background-color: black;
        }
        body{
            width: 100%;
            height: 100vh;
            background-image: url(assets/images/background.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-color: rgb(0,0,0,.6);
            background-blend-mode: overlay;
            font-family: sans-serif;
            background-attachment: fixed;
        }
        .nav-link:hover{
            color: white;
        }
        a{
            font-size: 20px;
        }
        .buttonAdd{
            color:black;
            text-decoration: none;
            font-family: sans-serif;
            font-size: 30px;
        }
        .buttonAdd:hover{
            text-decoration: none;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-align: center;
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
        .form-group input{
            height: 40px;
            border-radius: 5px;
            border: 0;
            font-size: 18px;
            padding-left: 50px;
        }
        .login{
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            color: white;
            font-size: 30px;
        }
        h1{
            color: white;
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
        .hello a{
            text-decoration: none;
        }
        .acus{
            font-family: sans-serif;
            font-size: 20px;
        }
    </style>



</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark navbar-custom">
    <h1>Online Examination</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="Exam.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="ResultList.jsp" class="nav-link acus">Result</a>
            </li>
            <li class="nav-item">
                <a href="Login.jsp" class="nav-link">Log Out</a>
            </li>
        </ul>
    </div>

</nav>

<div class="modal-dialog text-center">
    <div class="col-sm-8 main-section">
        <div class="modal-content">
            <div class="col-12 login">
                Exam finished. If you want to participate another exam then click here
            </div>
            <button class="btn btn-secondary"><a class="buttonAdd" href="Exam.jsp">Srart Exam</a></button>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
