package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteTheSelectedNewsContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String data = request.getParameter("u_ids");
        //切割字符串
        String[] split = data.split(",");
        Service service = new ServiceImpl();
        for (int i =0;i<split.length;i++){
            //循环删除
            int i1 = service.DeleteNewsContentByN_id(Integer.parseInt(split[i]));
        }
        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getOutputStream(),"删除成功！");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
