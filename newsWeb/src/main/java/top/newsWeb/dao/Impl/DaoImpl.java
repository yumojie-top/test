package top.newsWeb.dao.Impl;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import top.newsWeb.dao.Dao;
import top.newsWeb.domain.Comment;
import top.newsWeb.domain.PasswordHistory;
import top.newsWeb.domain.User;
import top.newsWeb.domain.news_content;
import top.newsWeb.utils.JDBCUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;


public class DaoImpl implements Dao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    //注册用户
    @Override
    public void register(User user) {
        //添加基本信息
        String sql = "insert into user(name,phone,email,password,status,code,age,gender,headPortrait) values(?,?,?,?,?,?,?,?,?);";
        int flag = template.update(sql,
                user.getName(),
                user.getPhone(),
                user.getEmail(),
                user.getPassword(),
                user.getStatus(),
                user.getCode(),
                user.getAge(),
                user.getGender(),
                user.getHeadPortrait());
    }


    //用户登录
    @Override
    public User login(String email, String password) {
        String sql = "select * from user where email=? and password=?";
        User user = null;
        try {
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), email, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    //检查是否有此激活码
    @Override
    public User checkActivate(String code) {
        String sql = "select * from user where code=?";
        User user = null;
        try {
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), code);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    //激活用户
    @Override
    public void activateCode(String code) {
        String sql = "update user set status='Y' where code=? ";
        template.update(sql, code);
    }

    /**
     * 通过邮箱获取用户的ID
     *
     * @param email
     * @return
     */
    @Override
    public Integer getUserID(String email) {
        String sql = "select id from user where email=?";
        Integer ID = null;
        try {
             ID= template.queryForObject(sql, Integer.class, email);

        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("DAO ID="+ID);

        return ID;
    }

    /**
     * 通过用户ID获取到副表的个人信息
     *
     * @param ID
     * @return
     */
    @Override
    public User GetUserPersonalCenter(int ID) {
        //两张表格查询1对1关系
        String sql = "SELECT NAME,phone,email,PASSWORD,age,gender,birthday,address,signature,headPortrait FROM USER WHERE id=?";

        User user = new User();
        user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), ID);
        System.out.println("1表格通过ID查询:");
        System.out.println(user);
        return user;
    }

    /**
     * 通过ID设置头像路径
     *
     * @param ID
     * @param path
     */
    @Override
    public void setHeadPortraitPath(int ID, String path) {
        String sql = "UPDATE  user SET headPortrait=? WHERE id=?";
        template.update(sql, path, ID);
    }

    /**
     * 修改个人详细资料
     *
     * @param user
     */
    @Override
    public void updatePersonalData(User user) {
        String sql = "UPDATE  user SET NAME=?,age=?,gender=?,birthday=?,address=?,signature=? WHERE id=?;";
//        String format = "yyyy-MM-dd";
//        SimpleDateFormat sdf = new SimpleDateFormat(format);
//        String birthday = sdf.format(upc.getBirthday());
        template.update(sql,
                user.getName(),
                user.getAge(),
                user.getGender(),
                user.getBirthday(),
                user.getAddress(),
                user.getSignature(),
                user.getId());
        System.out.println(user.getBirthday());

    }

    /**
     * 查询是否有此用户邮箱
     *
     * @param email
     * @return
     */
    @Override
    public String FindUserEmail(String email) {
        String sql = "select email from user where email=?";
        String result_email = null;
        try {
            result_email = template.queryForObject(sql, String.class, email);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("result_email=" + result_email);
        return result_email;
    }


    /**
     * 设置新的用户密码
     *
     * @param passwordHistory
     */
    @Override
    public void setConfirmPassword(PasswordHistory passwordHistory) {
        String sql = "UPDATE password_history SET new_password=?,STATUS=?,CODE=? WHERE u_id=?";
        template.update(sql,
                passwordHistory.getNew_password(),
                passwordHistory.getStatus(),
                passwordHistory.getCode(),
                passwordHistory.getU_id());
    }

    /**
     * 设置用户的历史密码表
     *
     * @param id
     */
    @Override
    public void setPasswordHistory(int id) {
        String sql = "insert into password_history(u_id) values(?)";
        template.update(sql, id);

    }


    /**
     * 通过确认ID和code吻合才进行修改密码
     * @param userID
     * @param status
     * @param code
     */
    @Override
    public int setNewPassword(int userID, String status, String code) {
        String sql = "UPDATE password_history SET STATUS=? WHERE u_id=? AND CODE=?";

        int update = template.update(sql, status, userID, code);
        System.out.println(update);
        return update;
    }

    /**
     * 查询用户修改密码的状态是"Y" 或"N",并返回
     *  @param userID
     * @param code
     * @return
     */
    @Override
    public PasswordHistory FindConfirmPasswordStatus(int userID, String code) {
        String sql = "SELECT STATUS,new_password FROM password_history WHERE u_id=? AND CODE=?";

        PasswordHistory ph = null;
        try {
            ph = template.queryForObject(sql, new BeanPropertyRowMapper<PasswordHistory>(PasswordHistory.class), userID, code);
        }catch (Exception e){
            e.printStackTrace();
        }
        return ph;
    }

    /**
     * 修改最新密码
     *
     * @param new_password
     */
    @Override
    public void setNewConfirmPassword(String new_password,int ID) {
        String sql ="update user set password=? where id=?";
        template.update(sql,new_password,ID);
    }

    /**
     * 获取全部user
     *
     * @return
     */
    @Override
    public Integer findUserAllCount(Map<String,String[]> map) {
        String sql ="SELECT COUNT(id) FROM USER where 1=1";

        StringBuilder sb=new StringBuilder(sql);


        //创建一个list集合装values
        List<Object> list=new ArrayList<Object>();

        //遍历map
        Set<String> keySet = map.keySet();
        for (String key : keySet) {

            //排除分页条件参数
            if (key.equals("currentPage") || key.equals("url")) {
                continue;
            }

            //根据key获取value
            String values = map.get(key)[0];

            //判断values是否有值
            if (values!=null && !"".equals(values)) {
                sb.append(" and "+key+" like ?");
                list.add("%"+values+"%");
            }

            System.out.println(list.toString());

        }
        System.out.println("sb="+sb.toString());
        Integer count=0;
        try {
            count = template.queryForObject(sb.toString(),Integer.class,list.toArray());
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("count="+count);
        return count;
    }

    /**
     * 查找当前页面的记录
     *
     * @param startNum
     * @param pageSize
     * @return
     */
    @Override
    public List<User> findUserPage(int startNum, int pageSize,Map<String,String[]> map) {
        String sql = "SELECT id,NAME,phone,email,PASSWORD,age,gender,birthday,status,address,signature,headPortrait FROM USER where 1=1";

        StringBuilder sb=new StringBuilder(sql);

        //创建一个list集合装values
        List<Object> list=new ArrayList<Object>();

        //遍历map
        Set<String> keySet = map.keySet();
        for (String key : keySet) {

            //排除分页条件参数
            if (key.equals("currentPage") || key.equals("url") ) {
                continue;
            }

            //根据key获取value
            String values = map.get(key)[0];

            //判断values是否有值
            if (values!=null && !"".equals(values)) {
                sb.append(" and "+key+" like ?");
                list.add("%"+values+"%");
            }

        }

        sb.append(" limit ?,? ");
        list.add(startNum);
        list.add(pageSize);


        System.out.println(list);
        System.out.println(sb.toString());

        List<User> list_user = template.query(sb.toString(),new BeanPropertyRowMapper<User>(User.class),list.toArray());
        return list_user;

    }

    @Override
    public Integer findNewsContentCount() {
        String sql ="SELECT COUNT(n_id) FROM news_content";
        Integer count=0;
        try {
            count = template.queryForObject(sql,Integer.class);
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("count="+count);
        return count;
    }

    /**
     * 添加新闻
     * @param nc
     */
    @Override
    public void   addNew(news_content nc) {
            String sql  = "INSERT INTO news_content(u_id,username,head,head_text,`type`,headImg,content,`like`,page_view,add_time,collect) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
            template.update(sql
                    ,nc.getU_id()
                    ,nc.getUsername()
                    ,nc.getHead()
                    ,nc.getHead_text()
                    ,nc.getType()
                    ,nc.getHeadImg()
                    ,nc.getContent()
                    ,nc.getLike()
                    ,nc.getPage_view()
                    ,nc.getAdd_time()
                    ,nc.getCollect());
    }

    /**
     * 根据id查询到昵称
     *
     * @param id
     * @return
     */
    @Override
    public String findUserNameByID(int id) {
        String sql = "select name from user where id=?";
        String name=null;
        try {
            name = template.queryForObject(sql, String.class, id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  name;
    }

    @Override
    public news_content findNewsContentByN_id(int n_id) {
        String sql = "SELECT n_id,u_id,username,head,head_text,`TYPE`,content,`like`,page_view,add_time,collect FROM news_content where n_id=?";
        news_content news_content = template.queryForObject(sql, new BeanPropertyRowMapper<news_content>(news_content.class), n_id);
        return news_content;
    }

    @Override
    public int DeleteNewsContentByN_id(int n_id) {
        String sql = "DELETE FROM news_content WHERE n_id=?";
        int update = template.update(sql, n_id);
        return update;
    }

    /**
     * 显示体育新闻
     *
     * @return
     */
    @Override
    public List<news_content> findNewsContentByType(String type) {
        String sql="SELECT n_id,u_id,username,head,head_text,`TYPE`,content,`like`,headImg,page_view,add_time,collect FROM news_content WHERE `type`=?";
        List<news_content> news_content = template.query(sql, new BeanPropertyRowMapper<news_content>(news_content.class), type);
        System.out.println(news_content);
        return  news_content;
    }

    /**
     * 查看用户评论
     * @param n_id
     * @return
     */
    @Override
    public List<Comment> findNewsComment(int n_id) {
        String sql = "SELECT c_id,u_id,n_id,`comment`,`like`,`floor` FROM COMMENT  WHERE n_id=?";
        List<Comment> comments = template.query(sql,new BeanPropertyRowMapper<Comment>(Comment.class),n_id);
        return comments;
    }

    /**
     * 查看用户的三条热评
     * @param n_id
     * @return
     */
    @Override
    public List<Comment> findNewsHotComment(int n_id) {
        String  sql = "SELECT c_id,u_id,n_id,`comment`,`like`,`floor` FROM COMMENT   WHERE n_id=? ORDER BY `like` DESC LIMIT 0,3";
        List<Comment> comments = template.query(sql, new BeanPropertyRowMapper<Comment>(Comment.class), n_id);
        return  comments;
    }

    @Override
    public int addANewsComment(Comment comment) {
        String sql = "INSERT INTO COMMENT(u_id,n_id,`comment`,`like`,`floor`) VALUES(?,?,?,?,?)";
        int update = template.update(sql,
                comment.getU_id(),
                comment.getN_id(),
                comment.getComment(),
                comment.getLike(),
                comment.getFloor()
        );
        return  update;
    }

    @Override
    public String getMaxFloor(int n_id) {
        String sql = "SELECT MAX(`floor`) FROM COMMENT WHERE n_id=?";
        String floor =null;
        try {
            floor = template.queryForObject(sql, String.class, n_id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return floor;
    }

    /**
     * 修改新闻
     * @param nc
     * @return
     */
    @Override
    public int updateNews(news_content nc) {
        String sql = "UPDATE news_content SET type=?,head=?,head_text=?,headImg=?,content=? where n_id=?";
        int update = template.update(sql,
                nc.getType(),
                nc.getHead(),
                nc.getHead_text(),
                nc.getHeadImg(),
                nc.getContent(),
                nc.getN_id());

        return update;
    }


    /**
     * 后台新闻分页
     * @param startNum
     * @param pageSize
     * @return
     */
    @Override
    public List<news_content> findNewsContent(int startNum,int pageSize) {
        String sql = "SELECT n_id,u_id,username,head,head_text,TYPE,content,`like`,page_view,add_time,collect FROM news_content LIMIT ?,?";
        List<news_content> list = template.query(sql, new BeanPropertyRowMapper<news_content>(news_content.class), startNum, pageSize);

        return list;
    }

    @Override
    public int StartUsingServlet(int id) {
       String sql = "update user set status='Y' where id=?";
        return template.update(sql, id);
    }

    @Override
    public int stopUsingServlet(int id) {
        String sql = "update user set status='N' where id=?";
        return template.update(sql, id);

    }

    @Override
    public int deleteUser(int id) {
        String sql = "DELETE FROM  `user` WHERE id=?";
        return  template.update(sql,id);
    }

    @Override
    public int addUser(User user) {
        String sql = "insert into user(name,phone,email,password,status,age,gender,headPortrait) values(?,?,?,?,?,?,?,?);";

        int flag = template.update(sql,
                user.getName(),
                user.getPhone(),
                user.getEmail(),
                user.getPassword(),
                user.getStatus(),
                user.getAge(),
                user.getGender(),
                user.getHeadPortrait());
                return flag;
    }

    @Override
    public int AdminSetNewPassword(String id, String password) {
        String sql = "update user set password=? where id=?";
        return template.update(sql, password, id);
    }

    @Override
    public User findAUser(int id) {
        String sql = "SELECT id,NAME,phone,email,PASSWORD,age,gender,birthday,STATUS,address,signature,headPortrait  FROM USER WHERE id=?";
        User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id);
        return user;
    }

    @Override
    public int editUser(User user) {
        String sql = "update user set email=?,name=?,phone=?,age=?,signature=? where id=?";
        int update = template.update(sql, user.getEmail(), user.getName(), user.getPhone(), user.getAge(), user.getSignature(), user.getId());
        return update;
    }


}
