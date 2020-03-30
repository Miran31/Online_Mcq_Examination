import Database.Database;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class Exam extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("# Inside Exam Servlet ");
        response.setContentType("application/json");
        int n = Integer.parseInt(request.getParameter("no_of_ques"));
        System.out.println(n);
        request.setAttribute("number_of_question", n);
        request.getSession().getAttribute("emailForAll");
        System.out.println("# Email for all "+request.getSession().getAttribute("emailForAll"));
        request.getRequestDispatcher("/ExamQuestion.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
