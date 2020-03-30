package servlet;

import Database.Database;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            PreparedStatement ps = Database.getConnection().prepareStatement("select * from information where email = ?");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            List<User> users = new ArrayList<>();
            while (rs.next()){
                users.add(new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
                User user = users.get(0);
                String Demail = user.getEmail();
                String Dpassword = user.getPassword();
                if (email.equals("admin_user@gmail.com")&&password.equals("admin@user")){
                    request.getRequestDispatcher("/adminHome.jsp").forward(request,response);
                }
                else if(email.equals(Demail)&& password.equals(Dpassword)){
                    request.getSession().setAttribute("email",email);
                    request.getRequestDispatcher("/Exam.jsp").forward(request,response);
                }
                else{
                    String infomessage = "Check your information";
                    request.getSession().setAttribute("infomessage",infomessage);
                    request.getRequestDispatcher("/Login.jsp").forward(request,response);
                }
            }
        }catch (Exception e){
            System.out.println(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
