package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteNewsContentServlet")
public class DeleteNewsContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n_id = request.getParameter("n_id");
        Service servicd = new ServiceImpl();

        int i = servicd.DeleteNewsContentByN_id(Integer.parseInt(n_id));
        String msg = "";
        if (i==0){
            //删除失败
            msg="删除失败！";
        }else{
            //删除成功
            msg="删除成功!";
        }
        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getOutputStream(),msg);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
