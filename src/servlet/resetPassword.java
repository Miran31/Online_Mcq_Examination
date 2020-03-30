package servlet;

import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class resetPassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Password = request.getParameter("password1");
        String email = request.getSession().getAttribute("reset_email").toString();
        System.out.println("email form jsp password" + email);
        try {
            PreparedStatement statement = Database.getConnection().prepareStatement("update information set Password = ? where email = ?");
            statement.setString(1,Password);
            statement.setString(2,email);
            int rs = statement.executeUpdate();
            if(rs>0){
                request.getRequestDispatcher("passwordChangeSuccessfull.jsp").forward(request,response);
            }
            else {
                String s = "Check Your Email.";
                request.setAttribute("s",s);
                request.getRequestDispatcher("resetPassword.jsp").forward(request,response);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
