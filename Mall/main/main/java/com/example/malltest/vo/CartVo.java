package com.example.malltest.vo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class CartVo {

    private List<CartProductVo> cartProductVoList;

    private Boolean selectedAll;//是否全选

    private BigDecimal cartTotalPrice;//所有商品总价

    private Integer cartTotalQuantity;//商品总数量
}
