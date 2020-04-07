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

@WebServlet(name = "NewPasswordServlet")
public class NewPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String password = request.getParameter("password");
        String id = request.getParameter("id");
        System.out.println(id+"m"+password);
        Service service = new ServiceImpl();
        int i = service.setNewPassword(id, password);
        ObjectMapper om = new ObjectMapper();
        if (i==0){

            om.writeValue(response.getWriter(),"修改失败");
        }else {
            om.writeValue(response.getWriter(),"修改成功");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
