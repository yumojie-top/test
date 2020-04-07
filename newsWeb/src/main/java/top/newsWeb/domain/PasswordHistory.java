package top.newsWeb.domain;

//用于修改密码的javaBean
public class PasswordHistory {

    private Integer id;             //主键
    private Integer u_id;            //外键
    private String new_password;    //设置新的密码
    private String status;          //密码修改状态  "Y"||"N"
    private String code;            //密码修改的唯一标识码

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getNew_password() {
        return new_password;
    }

    public void setNew_password(String new_password) {
        this.new_password = new_password;
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

    @Override
    public String toString() {
        return "PasswordHistory{" +
                "id=" + id +
                ", u_id='" + u_id + '\'' +
                ", new_password='" + new_password + '\'' +
                ", status='" + status + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
