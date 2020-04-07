package top.newsWeb.web.servlet;

import org.apache.commons.beanutils.BeanUtils;
import top.newsWeb.domain.User;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * 修改个人资料
 */
public class UpdatePersonalDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         int id =(int) request.getSession().getAttribute("NEWSUSERID");

        Service service = new ServiceImpl();

        //将用户数据保存到javaBean中
        User user = new User();
        Map<String, String[]> map = request.getParameterMap();
        try {
            BeanUtils.populate(user,map);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //修改个人资料
        System.out.println(user);
        user.setId(id);
        service.updatePersonalData(user);
        response.sendRedirect("getUserPersonalCenterServlet");



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
