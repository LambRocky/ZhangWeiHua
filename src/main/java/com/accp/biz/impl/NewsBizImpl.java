package com.accp.biz.impl;

import com.accp.biz.NewsBiz;
import com.accp.dao.NewsDao;
import com.accp.entity.News;
import com.accp.entity.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("newsBiz")
public class NewsBizImpl implements NewsBiz {

    @Resource
    private NewsDao newsDao;

    public List<News> queryNews() {
        return newsDao.queryNews();
    }

    public News queryNewss(int id) {
        return newsDao.queryNewss(id);
    }

    public int updateNews(News news) {
        return newsDao.updateNews(news);
    }

    public int insertNews(News news) {
        return newsDao.insertNews(news);
    }

    public int deleteNews(int id) {
        return newsDao.deleteNews(id);
    }

    public int deleteComment(int id) {
        return newsDao.deleteComment(id);
    }

    public List<News> queryComment(int id) {
        return newsDao.queryComment(id);
    }

    public void queryNewByPager(Pager<News> pager) {
        pager.setTotalRowCount(queryCount());
        pager.setDatas(newsDao.queryNewByPager((pager.getPageNo()-1)*pager.getPageSize(),pager.getPageSize()));
    }


    public int queryCount() {
        return newsDao.queryCount();
    }


}
