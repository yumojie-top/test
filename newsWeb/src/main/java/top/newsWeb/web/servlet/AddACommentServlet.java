package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AddACommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  email =(String) request.getSession().getAttribute("newsUserEmail");
        String n_id = request.getParameter("n_id");
        String comment = request.getParameter("comment");
        System.out.println(n_id+","+comment);

        String msg = "";
        if (email==null||email.equals("")){
            msg="请先登录再发表评论";
        }else{
            Service service = new ServiceImpl();
            int i = service.addANewsComment(Integer.parseInt(n_id), email, comment);

           if (i==1){msg="发表成功";}
           else {
               msg="发表失败";
           }
        }

        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getOutputStream(),msg);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
