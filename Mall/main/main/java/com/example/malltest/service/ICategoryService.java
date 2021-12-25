package com.example.malltest.service;

import com.example.malltest.vo.CategoryVo;
import com.example.malltest.vo.ResponseVo;

import java.util.List;
import java.util.Set;

public interface ICategoryService {

        ResponseVo<List<CategoryVo>>selectAll();

        void findSubCategoryId(Integer id, Set<Integer> resultSet);
}
