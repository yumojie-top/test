package top.newsWeb.service;

import top.newsWeb.domain.*;

import java.util.List;
import java.util.Map;

public interface Service {

    //用户注册
     ReslutInfo userRegisterSerivce(User user);
     //用户登录
     User userLoginService(String email,String password);
     //检查是否有此授权码
    boolean checkActivateService(String code);

    /**
     * 通过邮箱获取用户的详细信息
     * @param id
     * @return
     */
    User GetUserPersonalCenterService(int id);

    /**
     * 设置头像路径
     * @param path
     */
    void setHeadPortraitPath(int id,String path);

    /**
     * 修改个人资料
     * @param user
     */
     void updatePersonalData(User user);

    /**
     * 修改用户密码:1
     * @param email
     * @param password
     */
    boolean updateUserPassword(String email, String password);

    /**
     * 确认修改密码2: 调用数据库完成修改
     * @param email
     * @param code
     * @return
     */
    ReslutInfo updateUserConfirmPassword(String email, String code);

    /**
     * 分页查询
     * @param current
     * @param url
     * @return
     */
    paging findUserPaging(int current, String url, Map<String, String[]> map);

    JSONObject findNewsContent(int page,int limit,String url);

    news_content addNews(news_content nc);

    news_content findNewsContentByN_id(int n_id);

    int DeleteNewsContentByN_id(int n_id);

    /**
     * 根据类型查看新闻
     * @return
     */
    List<news_content> findNewsContentByType(String type);

    List<Comment> findNewsComment(int n_id);

    List<Comment> findNewsHotComment(int n_id);

    int addANewsComment(int n_id,String email,String comment);

    int updateNews(news_content nc);

    int startUsingServlet(int id);

    int stopUsingServlet(int id);

    int deleteUser(int parseInt);

    int addUserSerivce(User user);

    int setNewPassword(String id, String password);

    User findUserEdit(int id);

    int editUser(User user);

    int DeleteUserById(int parseInt);
}
