package com.accp.biz.impl;

import com.accp.biz.BillBiz;
import com.accp.dao.BillDao;
import com.accp.entity.Bill;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;
@Service("billBiz")
public class BillBizImpl implements BillBiz{
    @Resource
    private BillDao billDao;

    public List<Bill> listByCondition(String queryProductName, int queryProviderId, int queryIsPayment) {
        return billDao.queryBillWithIf(queryProductName,queryProviderId,queryIsPayment);
    }

    public boolean insertBill(Bill bill){
        return billDao.insertBill(bill)>0;
    }

    public boolean deleteBill(int id) {
        return  billDao.deleteBill(id)>0;
    }

    public Bill selectBillById(int id){
        return billDao.selectBillById(id);
    }

    public boolean modifyBill(Bill bill) {
        return billDao.modifyBill(bill)>0;
    }
}
