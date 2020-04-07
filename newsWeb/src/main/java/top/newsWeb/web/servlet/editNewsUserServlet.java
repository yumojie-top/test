package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.beanutils.BeanUtils;
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


public class editNewsUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        try {
            BeanUtils.populate(user,request.getParameterMap());
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(user);
        Service service = new ServiceImpl();
       int i =   service.editUser(user);
        ObjectMapper om = new ObjectMapper();
       if (i==0){
           om.writeValue(response.getWriter(),"修改失败");
       }else{
           om.writeValue(response.getWriter(),"修改成功");
       }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
