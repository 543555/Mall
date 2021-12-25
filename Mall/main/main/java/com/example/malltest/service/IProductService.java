package com.example.malltest.service;

import com.example.malltest.vo.ProductDetailVo;
import com.example.malltest.vo.ResponseVo;
import com.github.pagehelper.PageInfo;

public interface IProductService {

    ResponseVo<PageInfo> list(Integer categoryId, Integer pageNum, Integer pageSize);

    ResponseVo<ProductDetailVo> detail(Integer productId);
}
