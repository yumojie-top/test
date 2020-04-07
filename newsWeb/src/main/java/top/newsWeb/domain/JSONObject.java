package top.newsWeb.domain;

import java.util.List;

public class JSONObject {

    private Integer code;
    private String msg;
    private int count;
    private List<news_content> data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<news_content> getData() {
        return data;
    }

    public void setData(List<news_content> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "JSONObject{" +
                "code='" + code + '\'' +
                ", msg='" + msg + '\'' +
                ", count=" + count +
                ", data=" + data +
                '}';
    }
}
