package top.newsWeb.web.servlet;

import top.newsWeb.domain.news_content;
import top.newsWeb.service.Service;
import top.newsWeb.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoadNewsContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         System.out.println("进来了");
            Service service = new ServiceImpl();
        System.out.println("执行代码");
        //查找体育新闻
            List<news_content> newsContentBySports = service.findNewsContentByType("体育");
            //查看娱乐新闻
            List<news_content> newsContentByRecreation = service.findNewsContentByType("娱乐");
            //查看汽车新闻
            List<news_content> newsContentByAutomobile = service.findNewsContentByType("汽车");
            //查看房产新闻
            List<news_content> newsContentByHouse = service.findNewsContentByType("房产");
            //查看科技新闻
            List<news_content> newsContentByScience = service.findNewsContentByType("科技");
            //查看财经新闻
            List<news_content> newsContentByFinance = service.findNewsContentByType("财经");
            //查看军事新闻
            List<news_content> newsContentByMilitary = service.findNewsContentByType("军事");
            //查看热点新闻
            List<news_content> newsContentByHotspot = service.findNewsContentByType("热点");

            Map<String,List<news_content>> map = new HashMap<>();
            map.put("newsContentBySports",newsContentBySports);
            map.put("newsContentByRecreation",newsContentByRecreation);
            map.put("newsContentByAutomobile",newsContentByAutomobile);
            map.put("newsContentByHouse",newsContentByHouse);
            map.put("newsContentByScience",newsContentByScience);
            map.put("newsContentByFinance",newsContentByFinance);
            map.put("newsContentByMilitary",newsContentByMilitary);
            map.put("newsContentByHotspot",newsContentByHotspot);
        System.out.println("出去了");
            request.setAttribute("HOMEPAGE",map);
            request.getRequestDispatcher("index.jsp").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
