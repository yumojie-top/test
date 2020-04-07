package top.newsWeb.check;

import top.newsWeb.domain.User;

public interface CheckUser {

    /**
     * 检查昵称
     * @param name
     * @return
     */
    boolean checkName(String name);

    /**检查手机号
     *
     * @param phone
     * @return
     */
    boolean checkPhone(String phone);

    /**
     * 检查邮箱
     * @param email
     * @return
     */
    boolean checkEmail(String email);

    /**
     * 检查密码
     * @param password
     * @return
     */
    boolean checkPassword(String password);
}
