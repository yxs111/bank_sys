package com.qfedu.service;

import com.qfedu.pojo.User;

/**
 * Created by Administrator on 2019/6/15.
 */
public interface UserService {

    public User login(String bankcard, String password );
    public void update(User user);

    void login(User user);
}
