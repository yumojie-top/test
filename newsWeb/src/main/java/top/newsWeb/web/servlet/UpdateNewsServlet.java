package top.newsWeb.web.servlet;

import com.jspsmart.upload.SmartUpload;
import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;
import top.newsWeb.utils.IPTimeStamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UpdateNewsServlet")
public class UpdateNewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            String n_id = su.getRequest().getParameter("ID");
            String head = su.getRequest().getParameter("head");
            String type = su.getRequest().getParameter("type");
            String content = su.getRequest().getParameter("content");
            String head_text =su.getRequest().getParameter("head_text");
            //设置值
            nc.setN_id(Integer.parseInt(n_id));
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
       int updateNews = service.updateNews(nc);

       response.getWriter().print("<font color=red font-size=30px>修改成功！</font><a href=\"javascript:history.back(-1)\">返回</a>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
