package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.domain.Comment;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class ShowMoreNewsCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n_id = request.getParameter("n_id");
        Service service = new ServiceImpl();
        List<Comment> newsComment = service.findNewsComment(Integer.parseInt(n_id));

        System.out.println(newsComment);
        ObjectMapper om = new ObjectMapper();

        String json = om.writeValueAsString(newsComment);
        System.out.println("json="+json);
        om.writeValue(response.getOutputStream(),json);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
