package top.newsWeb.web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;
import top.newsWeb.utils.IPTimeStamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

//设置用户头像
public class SetHeadPortraitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SmartUpload su=new SmartUpload();
        //获取用户的邮箱
        int  id =(int) request.getSession().getAttribute("NEWSUSERID");
        su.initialize(this.getServletConfig(), request, response);

        String fileName ="";
        try {
            su.upload();
            fileName =new IPTimeStamp().getIPTimeRand()+"."+ su.getFiles().getFile(0).getFileExt();
            su.getFiles().getFile(0).saveAs("file"+ File.separator+fileName);
            //重新设置头像路径
            Service service = new ServiceImpl();
            service.setHeadPortraitPath(id,fileName);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }

        response.sendRedirect("getUserPersonalCenterServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
