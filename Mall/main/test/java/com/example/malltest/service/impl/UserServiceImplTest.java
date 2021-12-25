package com.example.malltest.service.impl;

import com.example.malltest.enums.ResponseEnum;
import com.example.malltest.enums.RoleEnum;
import com.example.malltest.pojo.User;
import com.example.malltest.vo.ResponseVo;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringRunner.class)
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@SpringBootTest
@Transactional //回滚不写入数据库
public class UserServiceImplTest  {

    public static final String USERNAME="Jack";

    public static final String PASSWORD="Jack";

    @Autowired
    private UserServiceImpl userService;

    @Before
    public void register() {
        User user=new User( USERNAME , PASSWORD,"jack@qq.com", RoleEnum.CUSTOMER.getCode());
        userService.register(user);
    }

    @Test
    public void login() {
        ResponseVo<User> responseVo = userService.login(USERNAME, PASSWORD);
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(),responseVo.getStatus());
    }
}