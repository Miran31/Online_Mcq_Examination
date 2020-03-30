<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.QuestionSet" %>
<%@ page import="model.Question" %>
<%@ page import="org.json.JSONArray" %><%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 02/25/2020
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <title>ExamQuestion | Online Mock Test</title>



    <style>
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
        .hello a{
            text-decoration: none;
        }
        .acus{
            font-size: 20px;
            font-family: sans-serif;
        }
        .btn-custom{
            text-align: center;
        }
        .qdesign{
            color: white;
        }
    </style>



</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark navbar-custom">
    <h1>Online Mock Test</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="Home.jsp" class="nav-link acus">Home</a>
            </li>
            <li class="nav-item">
                <a href="Login.jsp" class="nav-link acus">Logout</a>
            </li>
            <li class="nav-item">
            <a href="About.jsp" class="nav-link acus">About</a>
        </li>
        </ul>
    </div>

</nav>


 <%
     int n = Integer.valueOf(request.getAttribute("number_of_question").toString());
     QuestionSet questionSet = new QuestionSet();
     List<Question> questions = questionSet.getExamQues(n);

     System.out.println("# "+questions.toString());

 %>


<div class="modal-dialog modal-lg">
    <div class="col-sm-8 main-section">
        <div class="modal-content">
            <div class="col-12 login">
                Questoins
            </div>
            <%
                for (int i=0;i<questions.size();i++){
                    Question question = questions.get(i);
            %>
            <div class="qdesign">
            <form action="ExamFinish" method="post">
            <%=i+1%>
            <div id="ques"><%=question.getQues()%><br></div>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getA()%>"><%=question.getA()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getB()%>"><%=question.getB()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getC()%>"><%=question.getC()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getD()%>"><%=question.getD()%><br>
            <%
                }
            %>
            <div class="btn-custom">
                <input class="btn btn-secondary" type="submit" id="submit" value="Submit">
            </div>
            </form>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>

    $(document).ready(function () {

        $("#submit").click(function () {

            var questions = <%= new JSONArray(questions).toString()%>;
            ra = 0, wa = 0, na = 0;


            for(var i=0; i<questions.length; i++)
            {

                var question = questions[i];
                var ans = $("input[name=ans"+i+"]:checked").val();
                if(ans==undefined){
                    na++;
                }else if(question.cans==ans){
                    ra++;
                }else{
                    wa++;
                }
            }


            alert("Right Ans : "+ra+", Wrong Ans : "+wa+", No Ans : "+na);

            $.get("insertResult",{ra:ra, wa:wa, na:na}, function(data){
            });
        });
    });

</script>



</body>
</html>

