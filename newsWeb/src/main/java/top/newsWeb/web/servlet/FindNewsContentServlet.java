package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.domain.JSONObject;
import top.newsWeb.domain.User;
import top.newsWeb.domain.news_content;
import top.newsWeb.domain.paging;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FindNewsContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getParameter("url");   //路径
        String page = request.getParameter("page");  //当前页
        String limit = request.getParameter("limit");    //每页显示条数
        System.out.println(url+","+limit+","+page);

        Service service  = new ServiceImpl();
        JSONObject jsonObject = service.findNewsContent(Integer.parseInt(page), Integer.parseInt(limit), url);

        ObjectMapper om = new ObjectMapper();

        om.writeValue(response.getWriter(), jsonObject);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
