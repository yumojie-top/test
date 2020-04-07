package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeleteSelectUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ids = request.getParameter("ids");
        String[] split = ids.split(",");
        Service service = new ServiceImpl();
        for (int i =0;i<split.length;i++){
            //循环删除
            int i1 = service.DeleteUserById(Integer.parseInt(split[i]));
        }
        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getOutputStream(),"删除成功！");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
