package top.newsWeb.domain;

public class news_content {

    private Integer n_id;       //新闻ID
    private Integer u_id;       //发布人ID
    private String username;    //发布人姓名
    private String head;        //新闻标题
    private String head_text;
    private String headImg;     //标题图片
    private String type;       //新闻类型
    private String content;  //新闻内容
    private String like;       //点赞
    private String page_view;      //浏览量
    private String add_time;        //发布时间
    private String collect;         //收藏量

    public Integer getN_id() {
        return n_id;
    }

    public void setN_id(Integer n_id) {
        this.n_id = n_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public String getHead_text() {
        return head_text;
    }

    public void setHead_text(String head_text) {
        this.head_text = head_text;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLike() {
        return like;
    }

    public void setLike(String like) {
        this.like = like;
    }

    public String getPage_view() {
        return page_view;
    }

    public void setPage_view(String page_view) {
        this.page_view = page_view;
    }

    public String getAdd_time() {
        return add_time;
    }

    public void setAdd_time(String add_time) {
        this.add_time = add_time;
    }

    public String getCollect() {
        return collect;
    }

    public void setCollect(String collect) {
        this.collect = collect;
    }

    @Override
    public String toString() {
        return "news_content{" +
                "n_id=" + n_id +
                ", u_id=" + u_id +
                ", username='" + username + '\'' +
                ", head='" + head + '\'' +
                ", head_text='" + head_text + '\'' +
                ", headImg='" + headImg + '\'' +
                ", type='" + type + '\'' +
                ", content='" + content + '\'' +
                ", like='" + like + '\'' +
                ", page_view='" + page_view + '\'' +
                ", add_time='" + add_time + '\'' +
                ", collect='" + collect + '\'' +
                '}';
    }
}
