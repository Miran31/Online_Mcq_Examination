package servlet;

import Database.Database;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class confirmEmail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String confirmCode = request.getSession().getAttribute("confirm_email").toString();
        String code = request.getParameter("code");
        System.out.println("code = "+code+" confirm = "+confirmCode);
        if(code.equals(confirmCode)){
            String firstname = request.getSession().getAttribute("firstname").toString();
            String lastname = request.getSession().getAttribute("lastname").toString();
            String email = request.getSession().getAttribute("email").toString();
            String password = request.getSession().getAttribute("password").toString();
            try {
                PreparedStatement ps = Database.getConnection().prepareStatement("insert into information values (?, ?, ?, ?)");
                System.out.println("ps visited");
                System.out.println("inthe second"+firstname+" "+lastname+" "+email+" "+password);
                ps.setString(1,firstname);
                ps.setString(2,lastname);
                ps.setString(3,email);
                ps.setString(4,password);
                int x = ps.executeUpdate();
                System.out.println(x);
                if (x>0){
                    String msg = "Welcome !";
                    request.setAttribute("msg",msg);
                    request.getRequestDispatcher("/RegSuccess.jsp").forward(request,response);
                }
                else{
                    String messg = "Check your Email";
                    request.setAttribute("messg",messg);
                    request.getRequestDispatcher("/Reg.jsp").forward(request,response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        else {
            String msg = "Wrong Code";
            request.setAttribute("msg",msg);
            request.getRequestDispatcher("/confirmEmail.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
