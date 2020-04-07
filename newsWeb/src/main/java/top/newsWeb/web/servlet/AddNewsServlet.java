package top.newsWeb.web.servlet;

import com.jspsmart.upload.SmartUpload;
import org.apache.commons.beanutils.BeanUtils;
import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;
import top.newsWeb.utils.IPTimeStamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;


public class AddNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
        //取前台数据
        news_content nc = new news_content();
        SmartUpload su = new SmartUpload();

//        int  id =(int) request.getSession().getAttribute("NEWSUSERID");
        su.initialize(this.getServletConfig(), request, response);
        String fileName="";
        try {
            su.upload();
            fileName =new IPTimeStamp().getIPTimeRand()+"."+ su.getFiles().getFile(0).getFileExt();
            su.getFiles().getFile(0).saveAs("file"+ File.separator+fileName);
            //重新设置头像路径
            Service service = new ServiceImpl();
            String head = su.getRequest().getParameter("head");
            String type = su.getRequest().getParameter("type");
            String content = su.getRequest().getParameter("content");
            String head_text =su.getRequest().getParameter("head_text");
            nc.setU_id(1);
            nc.setHead(head);
            nc.setType(type);
            nc.setContent(content);
            nc.setHeadImg(fileName);
            nc.setHead_text(head_text);
            System.out.println(head+","+type+","+content+","+fileName);

        } catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(nc);
        Service service = new ServiceImpl();
        news_content news_content = service.addNews(nc);

        request.setAttribute("newsContent",news_content);
        request.getRequestDispatcher("/admin/show.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
