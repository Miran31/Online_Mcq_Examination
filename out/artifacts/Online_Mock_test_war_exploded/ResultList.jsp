<%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 03/10/2020
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="model.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viweport" charset="width=devide-width , initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <title>Result | Online Examination</title>


        <style>
        h1{
            color: white;
            font-weight: bold;
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
    <h1>Online Examination</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="adminHome.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="ResultList.jsp" class="nav-link acus">Result</a>
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

<div class="design" >
    Result
</div>
<div class="adesign">
    <%
        String email = request.getSession().getAttribute("email").toString();
        ResultDao resultDao = new ResultDao();
        List<Result> results = resultDao.allResult(email);
        System.out.println("email in the jsp page" + email);
    %>


    <table class="table table-striped table-hover">
        <thead class="table-dark">
        <th>SL</th>
        <th>Time</th>
        <th>Firstname</th>
        <th>lasrname</th>
        <th>email</th>
        <th>CorrectAns</th>
        <th>WrongAns</th>
        <th>NoAns</th>
        </thead>
        <tbody>
        <%

            for(int i=0; i<results.size(); i++){
                Result result = results.get(i);
        %>
        <tr>
            <td><%=i+1%></td>
            <td><%=result.getTime()%></td>
            <td><%=result.getFirstName()%></td>
            <td><%=result.getLastName()%></td>
            <td><%=result.getEmail()%></td>
            <td><%=result.getCorrectAns()%></td>
            <td><%=result.getWrongAns()%></td>
            <td><%=result.getNoAns()%></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
