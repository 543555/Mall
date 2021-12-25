package com.example.malltest.controller;

import com.example.malltest.service.ICategoryService;
import com.example.malltest.vo.CategoryVo;
import com.example.malltest.vo.ResponseVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
public class CategoryController {

    @Autowired
    private ICategoryService categoryService;

    @GetMapping("/categories")
    public ResponseVo<List<CategoryVo>> selectAll(){
        log.info(categoryService.selectAll().toString());
        return categoryService.selectAll();
    }
}
