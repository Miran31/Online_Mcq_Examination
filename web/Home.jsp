<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <title>Home | Online Examination</title>



  <style>
    h1{
      color: white;
      font-weight: bold;
    }
    .ho{
      color: white;
      text-align: center;
      font-size: 50px;
      margin-top: 135px;
      margin-bottom: 50px;
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
    }
    .nav-link:hover{
      color: white;
    }
    a{
      font-size: 20px;
    }
    .reg{
      text-align: center;
      color: white;
      font-size: 30px;
      font-weight: bold;
    }
    .btn-get-started {
      font-family:sans-serif;
      font-weight: 500;
      font-size: 16px;
      letter-spacing: 1px;
      display: inline-block;
      padding: 8px 32px;
      border-radius: 50px;
      transition: 0.5s;
      color: black;
      background: #146CF0;
    }

    .btn-get-started:hover {
      background: #2650C3;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      text-align: center;
    }
    .btn-custom:hover {
      text-decoration: none;
      color: black;
    }
    .btn-custom{
      color: white;
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
        <a href="Home.jsp" class="nav-link acus">Home</a>
      </li>
      <li class="nav-item">
        <a href="Login.jsp" class="nav-link acus">Login</a>
      </li>
      <li class="nav-item">
        <a href="Reg.jsp" class="nav-link acus">SignUp</a>
      </li><li class="nav-item">
      <a href="About.jsp" class="nav-link">About</a>
    </li>
    </ul>
  </div>

</nav>
<div class="bg custom">
  <h1 class="ho">
    <b>Welcome To Our Online Examination Website</b>
  </h1>
  <p class="reg">If You Are Not Regestered Then Click Here To Regester</p><br>
  <div class="btn-get-started" >
    <a class="btn-custom" href="Reg.jsp">SignUp</a>
  </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
