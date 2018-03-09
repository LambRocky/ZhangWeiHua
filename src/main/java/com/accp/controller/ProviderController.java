package com.accp.controller;

import com.accp.biz.ProviderBiz;
import com.accp.entity.Provider;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

@Controller("providerController")
@RequestMapping("/sys/provider")
public class ProviderController {

    @Resource
    private ProviderBiz providerBiz;

    @RequestMapping("/providerlist")
    public String toProviderList(Model model){
        model.addAttribute("providerList",providerBiz.listProviderByCondition(null,null));
        return "jsps/providerlist";
    }

    @RequestMapping("/providerlistcon")
    public String toProviderListCondition(String queryProCode,String queryProName,Model model) {
        model.addAttribute("providerList",providerBiz.listProviderByCondition(queryProCode,queryProName));
        return "jsps/providerlist";
    }


    @RequestMapping("/provideradd")
    public String providerToAdd(Provider provider,Model model){
        return "jsps/provideradd";
    }

    @RequestMapping("/providerdoadd")
    public String providerDoAdd(Provider provider,Model model){
        provider.setCreatedBy(1);
        provider.setCreationDate(new Date());
        if(!providerBiz.insertProvider(provider)){
            return "error";
        }
        model.addAttribute("providerList",providerBiz.listProviderByCondition(null,null));
        return "jsps/providerlist";
    }

    @RequestMapping("/providerdelete")
    @ResponseBody
    public String billDelete(int proid, Model model){
        int id=proid;
        HashMap<String,String> resultMap=new HashMap<String, String>();
        if(!providerBiz.deleteProvider(proid)){
            resultMap.put("delResult","false");
        }
        resultMap.put("delResult","true");
        return JSON.toJSONString(resultMap);

    }

    @RequestMapping("/providerview/{proid}")
    public String providerView(@PathVariable int proid, Model model){
        model.addAttribute("provider",providerBiz.listProviderById(proid));
        return "jsps/providerview";
    }


    @RequestMapping("/providertomodify/{proid}")
    public String providerModify(@PathVariable int proid, Model model){
        model.addAttribute("provider",providerBiz.listProviderById(proid));
        return "jsps/providermodify";
    }

    @RequestMapping("/providerdomodify")
    public void providerDoModify(Provider provider, Model model, HttpServletRequest hsr, HttpServletResponse hsp){
        try {
            provider.setModifyDate(new Date());
            provider.setModifyBy(1);
            if(providerBiz.updateProvider(provider)){
                hsp.sendRedirect("/provider/providerlist");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
