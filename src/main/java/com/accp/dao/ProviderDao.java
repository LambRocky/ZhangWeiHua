package com.accp.dao;


import com.accp.entity.Provider;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProviderDao {
    List<Provider> listProvider();

    List<Provider> listProviderByCondition(@Param("proCode") String proCode, @Param("proName") String proName);

    Provider listProviderById(@Param("providerid") Integer id);

    int updateProvider(Provider provider);

    int deleteProvider(@Param("providerid") Integer id);

    int insertProvider(Provider provider);
}
