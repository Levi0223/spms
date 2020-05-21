package controller;

import model.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "CenterController", urlPatterns = "*.cc")
public class CenterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String path = request.getServletPath();
        HttpSession session = request.getSession();
        path = path.substring(path.lastIndexOf("/" + 1, path.indexOf(".cc")));
        if (path.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            UserService service = new UserService();
            Map<String,String> user = service.getUserInfo(username,password);
            if (user == null){
//                request.setAttribute("username",user.get("username"));
//                request.setAttribute("href",request.getContextPath()+"index.jsp");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
