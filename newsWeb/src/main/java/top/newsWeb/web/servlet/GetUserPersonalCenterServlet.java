package top.newsWeb.web.servlet;

import top.newsWeb.domain.User;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//获取用户的个人信息到userPersonalCenter.jsp页面中
public class GetUserPersonalCenterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //拿取到用户的id
        int id = (int)request.getSession().getAttribute("NEWSUSERID");
        System.out.println(id);
        //通过邮箱获取用户的详细信息
        Service service=new ServiceImpl();
        //拿到用户的个人信息
        User user = null;

        user = service.GetUserPersonalCenterService(id);

        if (user!=null){
            request.setAttribute("upc",user);
            request.getRequestDispatcher("/userPersonalCenter.jsp").forward(request,response);

        }else{
            request.setAttribute("upcEmptyError","用户信息失效,请重新登录");
            request.getRequestDispatcher("/404.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
