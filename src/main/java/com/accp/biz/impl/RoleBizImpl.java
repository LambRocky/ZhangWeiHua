package com.accp.biz.impl;

import com.accp.biz.RoleBiz;
import com.accp.dao.RoleDao;
import com.accp.entity.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roleBiz")
public class RoleBizImpl implements RoleBiz {

    @Resource
    private RoleDao roleDao;
    public List<Role> rolelist() {
        return roleDao.rolelist();
    }
}
