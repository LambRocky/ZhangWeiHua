package com.accp.biz;

import com.accp.entity.Bill;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BillBiz {
    List<Bill> listByCondition(String queryProductName,int queryProviderId,int queryIsPayment);

    boolean insertBill(Bill bill);

    boolean deleteBill(int id);

    Bill selectBillById(int id);

    boolean modifyBill(Bill bill);
}
