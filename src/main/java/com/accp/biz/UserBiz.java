package com.accp.biz;


import com.accp.entity.User;

import java.util.List;

public interface UserBiz {
    List<User> listAll(String name, int roleid);

    User selectUserById(int id);

    boolean insertUser(User user);

    boolean deleteUser(int id);

    boolean updateUser(User u);
}