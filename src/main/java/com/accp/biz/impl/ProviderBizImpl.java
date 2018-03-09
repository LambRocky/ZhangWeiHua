package com.accp.biz.impl;

import com.accp.biz.ProviderBiz;
import com.accp.dao.ProviderDao;
import com.accp.entity.Provider;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("providerBiz")
public class ProviderBizImpl implements ProviderBiz {

    @Resource
    private ProviderDao providerDao;

    public List<Provider> listProvider(){
        return providerDao.listProvider();
    }

    public List<Provider> listProviderByCondition(String proCode, String proName) {
        return providerDao.listProviderByCondition(proCode,proName);
    }

    public Provider listProviderById(int id) {
        return providerDao.listProviderById(id);
    }

    public boolean deleteProvider(int id) {
        return providerDao.deleteProvider(id)>0;
    }

    public boolean insertProvider(Provider provider) {
        return providerDao.insertProvider(provider)>0;
    }

    public boolean updateProvider(Provider provider) {
        return providerDao.updateProvider(provider)>0;
    }
}
