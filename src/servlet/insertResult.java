package servlet;

import Database.Database;
import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class insertResult extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("# Inside Insert Result....");

        String email = request.getSession().getAttribute("email").toString();

        String ra = request.getParameter("ra");
        String wa = request.getParameter("wa");
        String na = request.getParameter("na");

        try {
            PreparedStatement ps = Database.getConnection().prepareStatement("select * from information where Email = ?");
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            List<User> users = new ArrayList<>();
            while (rs.next()) {
                users.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
                System.out.println(users);
                User user = users.get(0);
                Timestamp timestamp = new Timestamp(new Date().getTime());
                String time = timestamp.toString();
                System.out.println("current date and time " + timestamp);
                String sql = "insert into result values(?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement preparedStatement = Database.getConnection().prepareStatement(sql);
                preparedStatement.setString(1,time);
                preparedStatement.setString(2,user.getFirstname());
                preparedStatement.setString(3,user.getLastname());
                preparedStatement.setString(4,user.getEmail());
                preparedStatement.setString(5,ra);
                preparedStatement.setString(6,wa);
                preparedStatement.setString(7,na);
                int x = preparedStatement.executeUpdate();
                System.out.println("x = "+x);
                if (x>0){
                    //request.getRequestDispatcher("ExamFinish.jsp").forward(request,response);
                    response.sendRedirect("ExamFinish.jsp");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
