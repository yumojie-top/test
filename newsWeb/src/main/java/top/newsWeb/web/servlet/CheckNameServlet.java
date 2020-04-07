package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import top.newsWeb.check.CheckUser;
import top.newsWeb.check.Impl.CheckUserImpl;
import top.newsWeb.domain.ReslutInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReslutInfo info = new ReslutInfo();
        CheckUser checkUser = new CheckUserImpl();
        String name = request.getParameter("name");
        System.out.println(name);
        if(name!=null){
            if (checkUser.checkName(name)){
                info.setFlag(true);
            }else{
                info.setFlag(false);
            }
        }else{
            info.setFlag(false);
        }

        ObjectMapper om = new ObjectMapper();
        om.writeValue(response.getWriter(),info.isFlag());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
