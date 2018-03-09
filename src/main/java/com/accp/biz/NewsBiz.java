package com.accp.biz;

import com.accp.entity.News;
import com.accp.entity.Pager;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsBiz {

    List<News> queryNews();
    News queryNewss(int id);
    int updateNews(News news);
    int insertNews(News news);
    int deleteNews(int id);
    int deleteComment(int id);
    List<News> queryComment(int id);

    void queryNewByPager(Pager<News> pager);
    int queryCount();



}
