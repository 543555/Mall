package com.example.malltest.dao;

import com.example.malltest.pojo.Test;

public interface TestMapper {
    int insert(Test record);

    int insertSelective(Test record);
}