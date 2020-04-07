package top.newsWeb.domain;

//用于返回后台结果的javaBean
public class ReslutInfo {

    private boolean flag;   //后端返回结果正常为true，发生异常返回false
    private String msg;   //返回的错误信息或正确信息
    private  Object data;   //后端返回结果数据对象

    public ReslutInfo() {
    }

    public ReslutInfo(boolean flag) {
        this.flag = flag;
    }

    public ReslutInfo(boolean flag, String msg) {
        this.flag = flag;
        this.msg = msg;
    }

    public ReslutInfo(boolean flag, String msg, Object data) {
        this.flag = flag;
        this.msg = msg;
        this.data = data;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
