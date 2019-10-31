package com.qfedu.service.impl;

import com.qfedu.common.MyException;
import com.qfedu.dao.UserMapper;
import com.qfedu.pojo.User;
import com.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2019/6/15.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login( String bankcard,String password ) {
        User user2= userMapper.findByBank(bankcard);
        if(user2== null){
            throw new MyException(1, "银行卡号错误");
        }
        if(user2.getState() == 0){
            throw new RuntimeException("账户已冻结");
        }
        if(!user2.getPassword().equals(password)){
            throw new MyException(2, "密码错误");
        }
        return user2;
    }



    @Override
    public void update(User user) {
        userMapper.update(user);

    }

    @Override
    public void login(User user) {

    }
}
