package top.newsWeb.domain;

public class Comment {

    private Integer c_id;       //评论ID(做回复评论功能)
    private Integer n_id;       //新闻ID
    private Integer u_id;      //用户ID
    private String comment; //用户评论
    private String like;      //点赞
    private String floor;  //评论楼层

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getN_id() {
        return n_id;
    }

    public void setN_id(Integer n_id) {
        this.n_id = n_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getLike() {
        return like;
    }

    public void setLike(String like) {
        this.like = like;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "c_id=" + c_id +
                ", n_id=" + n_id +
                ", u_id=" + u_id +
                ", comment='" + comment + '\'' +
                ", like='" + like + '\'' +
                ", floor='" + floor + '\'' +
                '}';
    }
}
