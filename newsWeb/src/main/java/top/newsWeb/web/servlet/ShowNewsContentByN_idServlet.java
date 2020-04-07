package top.newsWeb.web.servlet;

import top.newsWeb.domain.Comment;
import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class ShowNewsContentByN_idServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n_id = request.getParameter("n_id");

        Service service = new ServiceImpl();
        //作者的新闻主体
        news_content news_content = service.findNewsContentByN_id(Integer.parseInt(n_id));
        //用户的最火评论，三条
        List<Comment> newsComment = service.findNewsHotComment(Integer.parseInt(n_id));
        System.out.println("新一："+news_content);
        System.out.println("comment="+newsComment);
        request.setAttribute("newsContent",news_content);
        request.setAttribute("newsComment",newsComment);
        request.getRequestDispatcher("/show.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
