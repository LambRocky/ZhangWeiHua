package com.accp.dao;

import com.accp.entity.User;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface UserDao {
    User user(User u);
    List<User>listAll(@Param("pageNo") int pageNo,
                      @Param("pageSize") int pageSize);
    List<User> listByCondition(@Param("userName") String name,
                               @Param("userRole") int roleid);
    int deleteUse(@Param("id") Integer id);
    int insertUse(User user);
    int selectUserByCode(@Param("userCode") String userCode);
    User selectUserById(@Param("id") Integer id);
    int updateUser(User u);
    int queryUsersRows(@Param("userName") String name, @Param("userRole") int roleid);
}
