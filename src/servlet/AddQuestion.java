package servlet;

import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddQuestion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ques = request.getParameter("Question");
        String optiona = request.getParameter("OptionA");
        String optionb = request.getParameter("OptionB");
        String optionc = request.getParameter("OptionC");
        String optiond = request.getParameter("OptionD");
        String correctans = request.getParameter("CorrectAns");
        System.out.println(ques + " " + optiona+" "+optionb+" "+optionc+" "+optiond+" "+correctans);
        try {
            PreparedStatement ps = Database.getConnection().prepareStatement("insert into question(Question,Option_A,Option_B,Option_C,Option_D,Correct_Ans) values (?, ?, ?, ?, ?, ?)");
            System.out.println("ps visited");
            ps.setString(1,ques);
            ps.setString(2,optiona);
            ps.setString(3,optionb);
            ps.setString(4,optionc);
            ps.setString(5,optiond);
            ps.setString(6,correctans);
            int a = ps.executeUpdate();

            System.out.println(ques + " " + optiona+" "+optionb+" "+optionc+" "+optiond+" "+correctans);
            if(a>0){
                String message = "Sucessfully Added";
                request.setAttribute("message",message);
                request.getRequestDispatcher("AddQuestion.jsp").forward(request,response);
            }
            else{
                request.getRequestDispatcher("AddQuestion.jsp").forward(request,response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
