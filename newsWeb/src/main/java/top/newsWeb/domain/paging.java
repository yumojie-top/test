package top.newsWeb.domain;

import top.newsWeb.domain.User;

import java.util.List;

public class paging {

    private int currentPage;  //当前页面(前台传入)
    private int totalNumber;     //总记录数(后台取)

    private int totalPage;     //总页数(后台取)
    private int pageSize = 10;//每页显示条数(自定义)

    private int startNum;//每页的起始记录数

    private int startPage;   //起始页面(从哪个页面开始)
    private int endPage;       //结束页面(到哪个页面结束)
    private List<User> list;
    private String url;


    public paging(int currentPage,int totalNumber,String url){
        this.currentPage=currentPage;
        this.totalNumber = totalNumber;
        this.url=url;


        //计算总页数
        if (totalNumber%pageSize==0) {
            totalPage = totalNumber / pageSize;
        }else{
            totalPage = totalNumber/pageSize+1;
        }

        startNum = (currentPage-1)*pageSize;

        //计算起始页面和结束页面
        if (currentPage<=5){
            startPage = 1;
            if (totalPage>=10){
                endPage=10;
            }else {
                endPage = totalPage;
            }
        }else if (currentPage>totalPage-5){
                startPage=totalPage-9;
                endPage=totalPage;
        }else{
            startPage = currentPage-4;
            endPage=currentPage+5;
        }
    }


    public int getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getStartNum() {
        return startNum;
    }

    public void setStartNum(int startNum) {
        this.startNum = startNum;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


}
