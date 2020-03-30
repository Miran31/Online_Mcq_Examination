import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class forgetEmail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Email = request.getParameter("forgetEmail");
        int code = (int)((Math.random()*99999)+11111);
        String message =  "Hello this is your code. Use this code to verify your account. code: "+code;
        sendMail.send(Email,"Confirmation Code",message,sendMail.TEXT_MAIL);
        request.getSession().setAttribute("confirm_code",code);
        request.getSession().setAttribute("reset_email",Email);
        request.getRequestDispatcher("forgetEmailConfirm.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
