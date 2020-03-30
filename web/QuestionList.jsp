<%@ page import="dao.QuestionDao" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Question" %><%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 03/13/2020
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Users | Online Examination</title>


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
        <%
            QuestionDao questionDao = new QuestionDao();
            List<Question> questions = questionDao.findAllQuestion();
        %>
        <div class="design">
            Question
        </div>
    <div>
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <th>SL</th>
            <th>Question</th>
            <th>Option A</th>
            <th>Option B</th>
            <th>Option C</th>
            <th>Option D</th>
            <th>Correct Ans</th>
            <th>Delete</th>
            </thead>
            <tbody>
            <%

                for(int i=0; i<questions.size(); i++){
                    Question question = questions.get(i);
            %>
            <tr>
                <td><%=i+1%></td>
                <td><%=question.getQues()%></td>
                <td><%=question.getA()%></td>
                <td><%=question.getB()%></td>
                <td><%=question.getC()%></td>
                <td><%=question.getD()%></td>
                <td><%=question.getCans()%></td>
                <td>
                    <form action="deletQuestion">
                        <input type="hidden" name="del_id" value="<%=question.getId()%>">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
    </body>
</html>
