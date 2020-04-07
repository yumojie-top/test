package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.beanutils.BeanUtils;
import top.newsWeb.domain.ReslutInfo;
import top.newsWeb.domain.User;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "AddUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        try {
            BeanUtils.populate(user,request.getParameterMap());
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(user);
        Service service = new ServiceImpl();
        int i = service.addUserSerivce(user);
        if (i==0){
            ObjectMapper om =new ObjectMapper();
            om.writeValue(response.getWriter(),"添加失败");
        }else{

        }
        ObjectMapper om =new ObjectMapper();
        om.writeValue(response.getWriter(),"添加成功");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
