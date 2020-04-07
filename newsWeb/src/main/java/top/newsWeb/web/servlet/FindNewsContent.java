package top.newsWeb.web.servlet;

import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class FindNewsContent extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n_id = request.getParameter("n_id");
        Service servicd = new ServiceImpl();

        news_content news_content = servicd.findNewsContentByN_id(Integer.parseInt(n_id));
        System.out.println("新一："+news_content);
        request.setAttribute("newsContent",news_content);
        request.getRequestDispatcher("/admin/show.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
