package com.accp.biz;


import com.accp.entity.Provider;

import java.util.List;

public interface ProviderBiz {
    List<Provider> listProvider();

    List<Provider> listProviderByCondition( String proCode,String proName);

    Provider listProviderById(int id);

    boolean deleteProvider(int id);

    boolean insertProvider(Provider provider);

    boolean updateProvider(Provider provider);
}
