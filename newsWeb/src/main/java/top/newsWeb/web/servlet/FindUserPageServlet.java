package top.newsWeb.web.servlet;

import top.newsWeb.domain.paging;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class FindUserPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentPage = request.getParameter("currentPage");
        String url = request.getParameter("url");
//        String name = request.getParameter("name");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");


        System.out.println(currentPage+"+"+url);
        Map<String, String[]> map = request.getParameterMap();



        Service service = new ServiceImpl();
        int currentPage1 = Integer.parseInt(currentPage);
        System.out.println("currentPage"+currentPage);
        paging userPaging = service.findUserPaging(currentPage1, url,map);
        request.setAttribute("condition",map);
        request.setAttribute("USERPAGING",userPaging);
        System.out.println("返回");
        System.out.println(userPaging.getList());
        request.getRequestDispatcher("/admin/member-list.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
