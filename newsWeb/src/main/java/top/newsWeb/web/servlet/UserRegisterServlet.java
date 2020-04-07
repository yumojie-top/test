package top.newsWeb.web.servlet;

import org.apache.commons.beanutils.BeanUtils;
import top.newsWeb.domain.ReslutInfo;
import top.newsWeb.domain.User;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.Map;

/* 用户注册*/
public class UserRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, String[]> map = request.getParameterMap();
        User user = new User();
        //获取 前台和后面验证码
        String checkcode_server =(String) request.getSession().getAttribute("CHECKCODE_SERVER");
        String verify_code = request.getParameter("verify_code");
        //设置每个验证码只能使用一次
        request.getSession().removeAttribute("CHECKCODE_SERVER");
        //验证码比较
        if (!checkcode_server.equalsIgnoreCase(verify_code)){
            //验证码错误  返回错误信息 结束
            request.setAttribute("ResultInfo","验证码不正确");
            System.out.println("验证码不正确");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
            return ;
        }

        //将map集合转为javaBean
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        System.out.println("注册:"+user);

        Service service = new ServiceImpl();
        //调用dao完成注册成功为true不成功为false
        ReslutInfo info = service.userRegisterSerivce(user);
        if (info.isFlag()){
            //注册成功,跳转邮箱验证
            request.getSession().setAttribute("news-username",user.getEmail());
            System.out.println("注册成功");
            //跳转成功页面
            request.getRequestDispatcher("/succeed.jsp").forward(request,response);
        }else{
            //注册失败
            request.setAttribute("ResultInfo",info.getMsg());
             System.out.println(info.getMsg());
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
