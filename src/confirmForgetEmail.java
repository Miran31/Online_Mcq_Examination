import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class confirmForgetEmail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Ecode = request.getSession().getAttribute("confirm_code").toString();
        String fcode = request.getParameter("fcode");
        if(fcode.equals(Ecode)){
            request.getRequestDispatcher("ResetPassword.jsp").forward(request,response);
        }
        else {
            String msg = "Wrong Code";
            request.setAttribute("msg",msg);
            request.getRequestDispatcher("forgetEmailConfirm.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
