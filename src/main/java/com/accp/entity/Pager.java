package com.accp.entity;

import java.util.List;

public class Pager<T> {
       private int pageNo;
       private int pageSize;
       private int totalRowCount;
       private int totalPager;
       private List<T> datas;
       private T params;

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRowCount() {
        return totalRowCount;
    }

    public void setTotalRowCount(int totalRowCount) {
        this.totalRowCount = totalRowCount;
    }

    public int getTotalPager() {
        return (totalRowCount  +  pageSize  - 1) / pageSize;
    }

    public void setTotalPager(int totalPager) {
        this.totalPager = totalPager;
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
    }

    public T getParams() {
        return params;
    }

    public void setParams(T params) {
        this.params = params;
    }
}
