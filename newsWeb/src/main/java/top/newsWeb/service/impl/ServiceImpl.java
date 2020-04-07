package top.newsWeb.service.impl;

import top.newsWeb.check.CheckUser;
import top.newsWeb.check.Impl.CheckUserImpl;
import top.newsWeb.dao.Dao;
import top.newsWeb.dao.Impl.DaoImpl;
import top.newsWeb.domain.*;
import top.newsWeb.service.Service;
import top.newsWeb.utils.MailUtils;
import top.newsWeb.utils.UuidUtil;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class ServiceImpl implements Service {
    Dao dao = new DaoImpl();

    /*
        用户注册
     */
    @Override
    public ReslutInfo userRegisterSerivce(User user) {
        //判断邮箱是否被注册
        System.out.println("注册1:"+user);
        String result = dao.FindUserEmail(user.getEmail());
        ReslutInfo info = new ReslutInfo();
        if (result == null) {
            //判断用户是否为空
            CheckUser check = new CheckUserImpl();
            //判断用户信息是否合法
            if (check.checkPhone(user.getPhone()) && check.checkEmail(user.getEmail()) && check.checkPassword(user.getPassword())) {

                //发送邮件
                String sqm = UuidUtil.getUuid();

                String content = "<a href='http://localhost/newsWeb/activate.jsp?sqm=" + sqm + "'>点击激活</a>";
                //  发送邮件
                boolean flag = MailUtils.sendMail(user.getEmail(), content, "小余新闻");
                if (!flag) {
                    //发送邮件失败
                    info.setFlag(false);
                    info.setMsg("邮件发送失败");
                    return info;
                }


                // 设置授权码
                user.setStatus("N");
                user.setCode(sqm);
                //设置附加信息
                user.setGender("");
                user.setAge(0);
                user.setHeadPortrait("20191010201321011728.jpg");

                //合法,返回成功
                dao.register(user);


                //邮件发送成功
                //设置ID号
                Integer userID = dao.getUserID(user.getEmail());


                //创建用户历史密码表
                dao.setPasswordHistory(userID);

                info.setFlag(true);
                return info;

            } else {
                //用户信息不匹配
                info.setFlag(false);
                info.setMsg("用户信息出错!");

                return info;
            }
        } else {
            info.setFlag(false);
            info.setMsg("此邮箱已被注册,请换个邮箱注册!!!");
            return info;
        }
    }

    /*
       用户登录
    */
    @Override
    public User userLoginService(String email, String password) {

        User user = dao.login(email, password);
        return user;
    }

    @Override
    public boolean checkActivateService(String code) {
        User user = dao.checkActivate(code);
        System.out.println(user);
        if (user != null) {
            //成功激活
            dao.activateCode(code);
            return true;
        }
        //激活失败
        return false;
    }

    /**
     * 通过邮箱获取用户的详细信息
     *
     * @param id
     * @return
     */
    @Override
    public User GetUserPersonalCenterService(int id) {
        User user = dao.GetUserPersonalCenter(id);
        return user;
    }

    /**
     * 设置头像路径
     *
     * @param path
     */
    @Override
    public void setHeadPortraitPath(int id, String path) {

        dao.setHeadPortraitPath(id, path);
    }

    /**
     * 修改个人资料
     *
     * @param user
     */
    @Override
    public void updatePersonalData(User user) {
        dao.updatePersonalData(user);
    }

    /**
     * 修改用户密码1:
     * 发送确认邮件
     *
     * @param email
     * @param password
     */
    @Override
    public boolean updateUserPassword(String email, String password) {

        //确认用户邮箱存在
        int ID = dao.getUserID(email);
        boolean result = false;
        if (ID != 0) {

            //设置新密码到数据库
            String code = UuidUtil.getUuid();
            //创建一个用于密码修改的javaBean
            PasswordHistory passwordHistory = new PasswordHistory();
            passwordHistory.setU_id(ID);
            passwordHistory.setNew_password(password);
            passwordHistory.setStatus("N");
            passwordHistory.setCode(code);
            //传入数据到历史密码表
            dao.setConfirmPassword(passwordHistory);

            String content = "你正在修改小余新闻的密码,系统正在确认是否是本人操作,如果是请<a href='http://localhost/newsWeb/confirmPassword.jsp?email=" + email + "&code=" + code + "'>点击这里确认修改!</a>";
            result = MailUtils.sendMail(email, content, "小余新闻");
        }
        return result;
    }

    /**
     * 确认修改密码2: 调用数据库完成修改
     *  @param email
     * @param code
     * @return*/
    @Override
    public ReslutInfo updateUserConfirmPassword(String email, String code) {

        //判断是否有此邮箱
        int userID = dao.getUserID(email);
        String status = "Y";
        ReslutInfo info = new ReslutInfo();
        if (userID != 0) {
            //邮箱正确

            //判断用户是否是第二次提交
            PasswordHistory ph = dao.FindConfirmPasswordStatus(userID, code);
            if (ph==null){
                info.setMsg("用户信息不正确,请保证链接可靠性!或进入邮箱点击链接重试!");
                return info;
            }
            if ("Y".equals(ph.getStatus())) {
                //用户密码已被修改(二次修改),返回错误信息
                info.setMsg("用户密码已被修改,请务多次提交!");
            } else if ("N".equals(ph.getStatus())) {
                //用户第一修改密码

                //通过确认ID和code吻合才进行修改密码
                int Confirm_result = dao.setNewPassword(userID, status, code);
                if (Confirm_result == 0) {
                    //说明ID和code不吻合,返回错误
                    info.setMsg("用户信息不正确,请保证链接可靠性!或进入邮箱点击链接重试!");
                } else {
                    //说明ID和code吻合,返回正确
                    dao.setNewConfirmPassword(ph.getNew_password(),ph.getU_id());
                    info.setMsg("密码已重新修改!请登录!");
                }
            }else{
                info.setMsg("用户信息不正确,请保证链接可靠性!或进入邮箱点击链接重试!");
            }
        } else {
            //没有查询到用户邮箱,返回错误
            info.setMsg("用户信息不正确,请保证链接可靠性!或进入邮箱点击链接重试!");
        }

        return info;
    }

    /**
     * 分页查询
     *
     * @param current
     * @param url
     * @return
     */
    @Override
    public paging findUserPaging(int current, String url, Map<String, String[]> map) {

        paging paging = new paging(current, dao.findUserAllCount(map), url);
        List<User> list = dao.findUserPage(paging.getStartNum(), paging.getPageSize(),map);
        paging.setList(list);
        return paging;
    }

    //查找新闻数据
    @Override
    public JSONObject findNewsContent(int page,int limit,String url) {



        JSONObject json = new JSONObject();
            json.setCount(dao.findNewsContentCount()); //数据总条数
            json.setCode(0);
            json.setMsg("");
            json.setData(dao.findNewsContent((page-1)*limit,limit));
        System.out.println(json.getData());
        return json;


    }

    @Override
    public news_content addNews(news_content nc) {
        //初始化
        nc.setUsername(dao.findUserNameByID(nc.getU_id()));
        Date date = new Date();
        String format = "yyyy-MM-dd";
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        String add_date = sdf.format(date);
        nc.setAdd_time(add_date);
        nc.setLike("0");
        nc.setCollect("0");
        nc.setPage_view("0");

        dao.addNew(nc);
        return nc;
    }

    @Override
    public news_content findNewsContentByN_id(int n_id) {
        news_content news_content = dao.findNewsContentByN_id(n_id);
        return news_content;
    }

    @Override
    public int DeleteNewsContentByN_id(int n_id) {
        int i = dao.DeleteNewsContentByN_id(n_id);
        System.out.println("i="+i);
        return i;
    }

    /**
     * 按类型查找新闻
     *
     * @return
     */
    @Override
    public List<news_content> findNewsContentByType(String type) {
        return  dao.findNewsContentByType(type);
    }



    @Override
    public List<Comment> findNewsComment(int n_id) {
        return dao.findNewsComment(n_id);
    }

    @Override
    public List<Comment> findNewsHotComment(int n_id) {
        return dao.findNewsHotComment(n_id);
    }

    /**
     * 用户发表评论
     * @param n_id
     * @param email
     * @param comment1
     * @return
     */
    @Override
    public int addANewsComment(int n_id, String email, String comment1) {
        Integer u_id = dao.getUserID(email);
        Comment comment = new Comment();
        comment.setU_id(u_id);
        comment.setN_id(n_id);
        comment.setComment(comment1);
        comment.setLike("0");
        String maxFloor = dao.getMaxFloor(n_id);
        System.out.println("maxFloor="+maxFloor);
        if (maxFloor==null||maxFloor.equals("")){
            comment.setFloor("1");
        }else{
            int floor = Integer.parseInt(maxFloor);
            floor=floor+1;
            System.out.println("增加后"+floor);
            comment.setFloor(floor+"");
        }

        System.out.println("co="+comment);
        int i = dao.addANewsComment(comment);
        return i;


    }

    /**
     * 修改新闻
     * @param nc
     * @return
     */
    @Override
    public int updateNews(news_content nc) {
        return dao.updateNews(nc);
    }

    /**
     * 禁用用户
     * @param id
     * @return
     */
    @Override
    public int startUsingServlet(int id) {
     return    dao.StartUsingServlet(id);
    }

    @Override
    public int stopUsingServlet(int id) {
        return dao.stopUsingServlet(id);
    }

    @Override
    public int deleteUser(int id) {
        return dao.deleteUser(id);
    }

    @Override
    public int addUserSerivce(User user) {
        // 设置授权码
        user.setStatus("Y");
        //设置附加信息
        user.setGender("");
        user.setAge(0);
        user.setHeadPortrait("20191010201321011728.jpg");
       return   dao.addUser(user);
    }

    @Override
    public int setNewPassword(String id, String password) {
        return dao.AdminSetNewPassword(id,password);
    }

    @Override
    public User findUserEdit(int id) {
        User aUser = dao.findAUser(id);
        return  aUser;
    }

    @Override
    public int editUser(User user) {
        return dao.editUser(user);
    }

    @Override
    public int DeleteUserById(int parseInt) {
        return dao.deleteUser(parseInt);
    }


}
