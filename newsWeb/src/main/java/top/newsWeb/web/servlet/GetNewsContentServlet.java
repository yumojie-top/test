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


public class GetNewsContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n_id = request.getParameter("n_id");

        Service service = new ServiceImpl();
        news_content news_content = service.findNewsContentByN_id(Integer.parseInt(n_id));
        System.out.println("新二123="+news_content);
        request.setAttribute("NEWSUPDATE",news_content);

        request.getRequestDispatcher("/admin/order-update.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
