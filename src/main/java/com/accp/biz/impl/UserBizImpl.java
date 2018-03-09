package com.accp.biz.impl;

import com.accp.biz.UserBiz;
import com.accp.dao.UserDao;
import com.accp.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {

    @Resource
    private UserDao userDao;

    public List<User> listAll(String name, int roleid) {
        return userDao.listByCondition(name,roleid);
    }

    public User selectUserById(int id) {
        return userDao.selectUserById(id);
    }

    public boolean insertUser(User user) {
        return userDao.insertUse(user)>0;
    }

    public boolean deleteUser(int id) {
        return userDao.deleteUse(id)>0;
    }

    public boolean updateUser(User u) {
        return userDao.updateUser(u)>0;
    }
}
