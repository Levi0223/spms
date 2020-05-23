package controller;

import com.alibaba.fastjson.JSONObject;
import model.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "CenterController", urlPatterns = "*.cc")
public class CenterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String path = request.getServletPath();
        HttpSession session = request.getSession();
        path = path.substring(path.lastIndexOf("/") + 1, path.indexOf(".cc"));
        UserService service = new UserService();
        if (path.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Map<String, String> user = service.getUserInfo(username, password);
            if (user == null) {
                request.setAttribute("msg", "This is something wrong with your username or password");
                request.setAttribute("href", request.getContextPath() + "/index.jsp");
                request.getRequestDispatcher("/view/result.jsp").forward(request, response);
            } else {
                if (user.get("ident").equals("0")) {
                    session.setAttribute("role", "teacher");
                    response.sendRedirect("teacher.cc");
                } else if (user.get("ident").equals("1")) {
                    session.setAttribute("role", "student");
                    session.setAttribute("ID", service.getUserInfo(username).get("id"));
                    response.sendRedirect("student.cc");
                } else if (user.get("ident").equals("2")) {
                    session.setAttribute("role", "enterprise");
                    response.sendRedirect("enterprise.cc");
                }
            }
        } else if (path.equals("teacher")) {
            request.getRequestDispatcher("/view/teacher.jsp").forward(request, response);
        } else if (path.equals("student")) {
            request.getRequestDispatcher("/view/student.jsp").forward(request, response);
        } else if (path.equals("enterprise")) {
            request.getRequestDispatcher("/view/enterprise.jsp").forward(request, response);
        } else if (path.equals("addGrade")) {
            String stu_id = request.getParameter("stu_id");
            String grade = request.getParameter("grade");
            Map<String, String> student = service.getStudentInfo(stu_id);
            if (student == null) {
                request.setAttribute("msg", "Id Error");
            } else {
                Map<String, String> score = service.getStudentGrade(stu_id);
                if (score == null) {
                    service.addGrade(stu_id, grade);
                } else {
                    service.updateGrade(stu_id, grade);
                }
                request.setAttribute("msg", "success");
            }
            request.setAttribute("href", request.getContextPath() + "/view/teacher.jsp");
            request.getRequestDispatcher("/view/result.jsp").forward(request, response);
        } else if (path.equals("check")) {
            String stu_id = request.getParameter("id");
            Map<String, String> grade = service.getStudentGrade(stu_id);
            if (grade == null) {
                request.setAttribute("msg", "Wrong ID, Please Try Again!");
                request.setAttribute("href", request.getContextPath() + "/view/Check.jsp");
                request.getRequestDispatcher("/view/result.jsp").forward(request, response);
            } else {
                String id = grade.get("stu_id");
                String score = grade.get("grade");
                request.setAttribute("id", id);
                request.setAttribute("score", score);
                request.getRequestDispatcher("/view/show_grade.jsp").forward(request, response);
            }

        } else if (path.equals("resume")) {

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
