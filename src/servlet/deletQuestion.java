package servlet;

import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class deletQuestion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int deletId = Integer.parseInt(request.getParameter("del_id"));
        String sql = "DELETE FROM `question` WHERE `question`.`Serial_no` = "+deletId;
        try {
            PreparedStatement preparedStatement = Database.getConnection().prepareStatement("delete from question where Serial_no = ?");
            preparedStatement.setInt(1,deletId);
            preparedStatement.executeUpdate();
            request.getRequestDispatcher("QuestionList.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
