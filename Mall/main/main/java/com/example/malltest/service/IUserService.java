package com.example.malltest.service;

import com.example.malltest.pojo.User;
import com.example.malltest.vo.ResponseVo;

public interface IUserService {

    /**
     * 注册
     */
    ResponseVo<User>register(User user);

    /**
     * 登陆
     */
    ResponseVo<User> login(String username,String password);
}
