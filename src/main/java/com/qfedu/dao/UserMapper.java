package com.qfedu.dao;

import com.qfedu.pojo.User;

/**
 * Created by Administrator on 2019/6/15.
 */
public interface UserMapper {

    public User findByBank(String bank);
    public User findByPassword(String password);
    public void update(User user);
}
