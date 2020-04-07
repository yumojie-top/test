package top.newsWeb.web.servlet;

import top.newsWeb.check.CheckUser;
import top.newsWeb.check.Impl.CheckUserImpl;
import top.newsWeb.domain.ReslutInfo;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用户忘记密码,给用户发送确认修改邮件,用户点击确认后修改
 */
public class UpdateUserPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        ReslutInfo info = new ReslutInfo();
        CheckUser ck = new CheckUserImpl();
        if (ck.checkEmail(email)&&ck.checkPassword(password)&&ck.checkPassword(confirm_password)){
            Service service = new ServiceImpl();
            boolean result = service.updateUserPassword(email, password);
            if (password.equals(confirm_password)){
                //两次密码输入一致
                if (result){
                    //邮件发送成功
                    info.setMsg("已向您的邮箱发送了一条信息,请登录邮件确认修改密码!");
                }else{
                    //邮件发送失败
                    info.setMsg("系统未检查到有此邮箱,请确认后再重新提交!");
                }

            }else{
                info.setMsg("两次密码不一致!!!");
            }
        }else{
            //邮箱或密码验证没有通过
            info.setMsg("邮箱或密码错误,修改密码失败!");
             }
        //发送错误信息至前台
        request.setAttribute("ResultInfo",info);
        request.getRequestDispatcher("/forgetPassword.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
