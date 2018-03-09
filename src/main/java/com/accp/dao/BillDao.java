package com.accp.dao;


import com.accp.entity.Bill;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BillDao {

    List<Bill> queryBillWithIf(@Param("name") String name, @Param("id") Integer id, @Param("pay") Integer pay);

    int insertBill(Bill bill);

    int deleteBill(int id);

    Bill selectBillById(int id);

    int modifyBill(Bill bill);
}
