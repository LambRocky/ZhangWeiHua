package com.accp.controller;


import com.accp.biz.NewsBiz;
import com.accp.entity.News;
import com.accp.entity.Pager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Date;


@Controller()
public class NewsController {
    @Resource(name="newsBiz")
    private NewsBiz newsBiz;


    @RequestMapping("/sys/bill/billlist")
    public String toShow(Model model){
        model.addAttribute("newsList",newsBiz.queryNews());
        return getNewsList(1,model);
    }

    @RequestMapping("/sys/bill/billmodify/{id}")
    public String billShow(@PathVariable int id, Model model){
        model.addAttribute("news",newsBiz.queryNewss(id));
        return "jsps/billmodify";
    }
    @RequestMapping("sys/bill/billdomodify/update")
    public String BillShow(News news,Model model){
        newsBiz.updateNews(news);
        model.addAttribute("newsList",newsBiz.queryNews());
        return getNewsList(1,model);
    }

    @RequestMapping("/sys/bill/b/{id}")
    public String bShow(@PathVariable int id, Model model){
        model.addAttribute("news",newsBiz.queryNewss(id));
        return "jsps/billview";
    }
    @RequestMapping("/sys/bill/tolist")
    public String Show(){

        return "jsps/billadd";
    }
    @RequestMapping("/sys/bill/add")
    public String addShow(News news,Model model){
        news.setCreationDate(new Date());
        newsBiz.insertNews(news);
        return getNewsList(1,model);
    }
    @RequestMapping("/sys/bill/billdelete/{id}")
    public String deleteShow(@PathVariable int id,Model model){
        newsBiz.deleteComment(id);
        newsBiz.deleteNews(id);
        model.addAttribute("newsList",newsBiz.queryNews());
        return getNewsList(1,model);
    }


    @RequestMapping("/getnewslist")
    public String getNewsList(@RequestParam(defaultValue = "1",required = false)int pageIndex,Model model){
        Pager<News> pager=new Pager<News>();
        pager.setPageSize(5);
        pager.setPageNo(pageIndex);
        newsBiz.queryNewByPager(pager);
        model.addAttribute("pager",pager);
        return "jsps/billlist";
    }


}
