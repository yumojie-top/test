package top.newsWeb.check.Impl;

import top.newsWeb.check.CheckUser;
import top.newsWeb.domain.User;

public class CheckUserImpl implements CheckUser {


    /**
     * 检查昵称
     *
     * @param name
     * @return
     */
    @Override
    public boolean checkName(String name) {
        if (name!=null){
            String regex = "^[\\u4E00-\\u9FA5A-Za-z0-9_]+$";
            if (name.matches(regex)){
                    if (name.length()<=10&&name.length()>=1){

                        System.out.println("通过");
                        return true;
                    }
            }

        }
        System.out.println("未通过");
        return false;
    }

    /**
     * 检查手机号
     * @param phone
     * @return
     */
    @Override
    public boolean checkPhone(String phone) {
        String regex = "^[1]+\\d{10}";
        if(phone!=null){
            System.out.println("手机号不为空");
            boolean matches = phone.matches(regex);
            System.out.println(matches);
            if (matches){
                //手机号不为空,并且正则表达式通过
                System.out.println("手机号通过");
                return true;
            }
            return false;
        }else{
            return false;
        }
    }

    /**
     * 检查邮箱
     * @param email
     * @return
     */
    @Override
    public boolean checkEmail(String email) {
        System.out.println(email);
        String regex = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        if(email!=null){
            System.out.println("邮箱不为空");
            if (email.matches(regex)){
                //手机号不为空,并且正则表达式通过
                System.out.println("邮箱通过");
                return true;
            }
            return false;
        }else{
            return false;
        }
    }

    /**
     * 检查密码
     * @param password
     * @return
     */
    @Override
    public boolean checkPassword(String password) {

        String regex = "^[^\\s]{8,20}$";
        if(password!=null){
            System.out.println("密码不为空");
            if (password.matches(regex)){
                //密码不为空,并且正则表达式通过
                return true;
            }
            System.out.println("密码不合法");
            return false;
        }else{
            System.out.println("密码为空");
            return false;
        }
    }
}
