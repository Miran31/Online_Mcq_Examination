<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
        String correctAns=request.getParameter("correctAns");
        String wrongAns=request.getParameter("wrongAns");
        String noAns=request.getParameter("noAns");
        try
        {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_mock_test", "root", "ar@miran");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into result(Correct_Ans,Wrong_Ans,No_Ans)values('"+correctAns+"','"+wrongAns+"','"+noAns+"')");
        }
        catch(Exception e)
        {
            System.out.print(e);
            e.printStackTrace();
        }
%>