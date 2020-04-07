package top.newsWeb.dao;

import top.newsWeb.domain.Comment;
import top.newsWeb.domain.PasswordHistory;
import top.newsWeb.domain.User;
import top.newsWeb.domain.news_content;

import java.util.List;
import java.util.Map;

public interface Dao {
    //用户注册
    void register(User user);

    //用户登录
    User login(String email,String password);

    //检查用户的激活码
    User checkActivate(String code);

    //通过激活码激活用户的status码
    void activateCode(String code);

    /**
     *通过邮箱获取用户的ID
     * @param email
     * @return
     */
    Integer getUserID(String email);

    /**
     * 通过用户ID获取到副表的个人信息
     * @param ID
     * @return
     */
    User GetUserPersonalCenter(int ID);

    /**
     * 通过ID设置头像路径
     * @param path
     */
    void setHeadPortraitPath(int ID,String path);

    /**
     * 修改个人详细资料
     * @param user
     */
    void updatePersonalData(User user);

    /**
     * 查询是否有此用户邮箱
     * @param email
     * @return
     */
    String FindUserEmail(String email);

    /**
     * 设置新的用户密码
     * @param passwordHistory
     */
    void setConfirmPassword(PasswordHistory passwordHistory);

    /**
     * 设置用户的历史密码表
     * @param id
     */
    void setPasswordHistory(int id);

    /**
     * 通过确认ID和code吻合才进行修改密码
     * @param userID
     * @param status
     * @param code
     */
    int setNewPassword(int userID, String status, String code);

    /**
     * 查询用户修改密码的状态是"Y" 或"N"和用户密码
     * @param userID
     * @param code
     * @return
     */
    PasswordHistory FindConfirmPasswordStatus(int userID, String code);

    /**
     * 修改最新密码
     * @param new_password
     */
    void setNewConfirmPassword(String new_password,int ID);

    /**
     * 获取user总数
     * @return
     */
    Integer findUserAllCount(Map<String,String[]> map);

    /**
     * 查找当前页面的记录
     * @param startNum
     * @param pageSize
     * @return
     */
    List<User> findUserPage(int startNum, int pageSize,Map<String,String[]> map);

    List<news_content> findNewsContent(int startNum,int pageSize);

    Integer findNewsContentCount();

    void addNew(news_content nc);

    /**
     * 根据id查询到昵称
     * @param id
     * @return
     */
    String findUserNameByID(int id);

    news_content findNewsContentByN_id(int n_id);


    int DeleteNewsContentByN_id(int n_id);

    /**
     * 根据新闻类型查找新闻
     * @return
     */
    List<news_content> findNewsContentByType(String type);


    List<Comment> findNewsComment(int n_id);

    List<Comment> findNewsHotComment(int n_id);

    int addANewsComment(Comment comment);

    String getMaxFloor(int n_id);

    int updateNews(news_content nc);

    int StartUsingServlet(int id);

    int stopUsingServlet(int id);

    int deleteUser(int id);

    int addUser(User user);

    int AdminSetNewPassword(String id, String password);

    User findAUser(int id);

    int editUser(User user);
}
