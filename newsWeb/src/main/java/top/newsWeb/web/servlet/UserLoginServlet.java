package top.newsWeb.web.servlet;

import top.newsWeb.check.CheckUser;
import top.newsWeb.check.Impl.CheckUserImpl;
import top.newsWeb.domain.User;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//用户登录
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //用户登录验证

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        CheckUser checkUser = new CheckUserImpl();
        if (checkUser.checkEmail(email)&&checkUser.checkPassword(password)) {
            Service service = new ServiceImpl();
            User user = service.userLoginService(email, password);
            if (user != null) {

                //有此用户,判断用户状态是否激活
                String status = user.getStatus();
                if (status != null && "Y".equals(status)) {
                    //已激活
                    //有此用户
                    request.getSession().setAttribute("newsUserName", user.getName());
                    request.getSession().setAttribute("NEWSUSERID",user.getId());
                    //newsUserEmail
                    request.getSession().setAttribute("newsUserEmail", user.getEmail());
                    response.sendRedirect("/newsWeb/index.jsp");
                } else {
                    //未激活
                    request.setAttribute("loginErrorMsg", "此用户未激活,"+"<a>未收到邮箱信息?</a>");
                    request.getRequestDispatcher("/login.jsp").forward(request, response);

                }


            } else {
                //没有此用户或用户名密码错误
                request.setAttribute("loginErrorMsg", "用户名或密码错误");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }


        }else{
            request.setAttribute("loginErrorMsg", "请输入正确的用户名和密码!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
