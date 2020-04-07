package top.newsWeb.web.servlet;

import top.newsWeb.domain.ReslutInfo;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//用户修改密码2, 用户确认密码servlet
public class UserConfirmPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String code = request.getParameter("code");

        if (email!=null&&code!=null){
            Service service = new ServiceImpl();
            ReslutInfo info = service.updateUserConfirmPassword(email, code);

            request.setAttribute("ConfirmPasswordInfo",info.getMsg());
            request.getRequestDispatcher("confirmPassword.jsp").forward(request,response);
        }else{
            request.setAttribute("ConfirmPasswordInfo","链接信息不全面,请重新进入!");
            request.getRequestDispatcher("confirmPassword.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
