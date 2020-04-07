package top.newsWeb.domain;

import java.io.Serializable;

public class User implements Serializable {
    //主信息(必要)
    private Integer id;
    private String name;
    private String phone;
    private String email;
    private String password;
    private String status;  //状态码 , "Y"为已激活,"N"为还未激活
    private String code;    //唯一激活码


    //附加信息
    private int age;            //用户年龄
    private String  birthday;      //用户生日
    private String address;     //用户地址
    private String gender;      //用户性别男或女
    private String signature;   //个性签名50个字符内
    private String headPortrait;//用户头像保存路径





    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getHeadPortrait() {
        return headPortrait;
    }

    public void setHeadPortrait(String headPortrait) {
        this.headPortrait = headPortrait;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", status='" + status + '\'' +
                ", code='" + code + '\'' +
                ", age=" + age +
                ", birthday='" + birthday + '\'' +
                ", address='" + address + '\'' +
                ", gender='" + gender + '\'' +
                ", signature='" + signature + '\'' +
                ", headPortrait='" + headPortrait + '\'' +
                '}';
    }
}
