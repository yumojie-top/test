package top.newsWeb.web.servlet;

import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//用户激活中心
public class UserActivateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sqm = request.getParameter("sqm");
        Service service = new ServiceImpl();
        System.out.println(sqm);
        if (sqm!=null){
            boolean flag = service.checkActivateService(sqm);
            System.out.println(flag);
            if (flag){
                response.getWriter().print("激活成功请<a href='http://localhost/newsWeb/login.jsp'>登录<a/>");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
