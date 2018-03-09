package com.accp.dao;

import com.accp.entity.Comment;
import com.accp.entity.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsDao {

    List<News> queryNews();//默认查询全部

    News queryNewss(@Param("id")int id);//根据ID单个查询

    int updateNews(News news);//修改新闻

    int insertNews(News news);//添加新闻

    int deleteNews(int id);//删除新闻

    int deleteComment(int id);

    List<News> queryComment(@Param("id")int id);

    List<News> countnews(News news);

    List<News> queryNewByPager(@Param("pagerNo")int pageNo,@Param("pageSize")int pageSize);


    int queryCount();

}
