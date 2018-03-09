package com.accp.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class News {
    private int id;//KBA新闻ID
    private String title;//KBA新闻标题
    private Date creationDate;//上传时间
    private int isRecommend;//推荐
    private String createByName;//出版人
    private int visitorCount;//访问量--新增
    private String content;

    private Comment comments;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public int getIsRecommend() {
        return isRecommend;
    }

    public void setIsRecommend(int isRecommend) {
        this.isRecommend = isRecommend;
    }

    public String getCreateByName() {
        return createByName;
    }

    public void setCreateByName(String createByName) {
        this.createByName = createByName;
    }

    public int getVisitorCount() {
        return visitorCount;
    }

    public void setVisitorCount(int visitorCount) {
        this.visitorCount = visitorCount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setComments(Comment comments) {
        this.comments = comments;
    }

    public Comment getComments() {
        return comments;
    }
}
