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

public class DeleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Service service = new ServiceImpl();
        int i = service.deleteUser(Integer.parseInt(id));
        String msg = "";
        if (i==0){
            msg="删除失败";
        }else{
            msg="删除成功";
        }
        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getWriter(),msg);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
