package com.accp.controller;


import com.accp.biz.BillBiz;

import com.accp.biz.ProviderBiz;
import com.accp.entity.Bill;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

@Controller

@RequestMapping("/sys/bill")
public class BillController {

    @Resource(name = "billBiz")
    private BillBiz billBiz;

    @Resource(name = "providerBiz")
    private ProviderBiz providerBiz;


    @RequestMapping("/index2")
    public String toLoginAlls(Model model){

        return "index";
    }

//    @RequestMapping("/tolist")
//    public String toListCondition(@RequestParam(required = false) String queryProductName,
//                                  @RequestParam(required = false)  int queryProviderId,
//                                  @RequestParam(required = false)  int queryIsPayment,
//                                  Model model){
//        String name=queryProductName;
//        model.addAttribute("billList",billBiz.listByCondition(queryProductName,queryProviderId,queryIsPayment));
//        model.addAttribute("providerList",providerBiz.listProvider());
//        return "jsps/billlist";
//    }

    @RequestMapping("/billadd")
    public String billAdd(Model model) {
        model.addAttribute("providerList",providerBiz.listProvider());
        return "jsps/billadd";
    }

//    @RequestMapping("/add")
//    public String billAddObject(Bill bill, Model model) {
//        bill.setCreatedBy(1);
//        bill.setCreationDate(new Date());
//        String name=bill.getProductName();
//        if(!billBiz.insertBill(bill)){
//            return "error";
//        }
//        model.addAttribute("billList",billBiz.listByCondition(null,-1,-1));
//        model.addAttribute("providerList",providerBiz.listProvider());
//        return "jsps/billlist";
//    }

    @RequestMapping("/billDelete")
    @ResponseBody
    public String billDelete(int billid, Model model){
        int id=billid;
        HashMap<String,String> resultMap=new HashMap<String, String>();
        if(!billBiz.deleteBill(id)){
            resultMap.put("delResult","false");
        }
        resultMap.put("delResult","true");
        return JSON.toJSONString(resultMap);

    }



//    @RequestMapping("/tobillmodify/{billid}")
//    public String billToModify(@PathVariable int billid,Model model){
//        model.addAttribute("providerList",providerBiz.listProvider());
//        model.addAttribute("bill",billBiz.selectBillById(billid));
//        return "jsps/billmodify";
//    }

    @RequestMapping("/billdomodify")
    public void billDoModify(Bill bill,HttpServletRequest hsr,HttpServletResponse hsp){
        try {
            bill.setModifyDate(new Date());
            bill.setModifyBy(1);
            if(billBiz.modifyBill(bill)) {
                hsp.sendRedirect("/bill/billlist");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




}
