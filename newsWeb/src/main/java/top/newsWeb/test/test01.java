package top.newsWeb.test;

import top.newsWeb.check.CheckUser;
import top.newsWeb.check.Impl.CheckUserImpl;

public class test01 {

    public static void main(String[] args) {
        CheckUser checkUser = new CheckUserImpl();
        boolean result = checkUser.checkName("人们abcd");
    }
    
}
