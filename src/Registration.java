import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        System.out.println(firstname+" "+lastname+" "+email+" "+password);


        request.getSession().setAttribute("firstname",firstname);
        request.getSession().setAttribute("lastname",lastname);
        request.getSession().setAttribute("email",email);
        request.getSession().setAttribute("password",password);
        int code = (int)((Math.random()*999999)+111111);
        String msg = "Hello "+firstname+" "+lastname+" Welcome to our website\n Enter this code to verify your account:- "+code;
        sendMail.send(email,"Confirmation Code",msg, sendMail.TEXT_MAIL);
        request.getSession().setAttribute("confirm_email",code);
        request.getRequestDispatcher("/confirmEmail.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
