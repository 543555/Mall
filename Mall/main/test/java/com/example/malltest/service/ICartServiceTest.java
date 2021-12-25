package com.example.malltest.service;

import com.example.malltest.enums.ResponseEnum;
import com.example.malltest.form.CartAddForm;
import com.example.malltest.form.CartUpdateForm;
import com.example.malltest.vo.CartVo;
import com.example.malltest.vo.ResponseVo;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import lombok.extern.slf4j.Slf4j;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@SpringBootTest
@Slf4j
public class ICartServiceTest {

    @Autowired
    private ICartService cartService;

    private Gson gson= new GsonBuilder().setPrettyPrinting().create();

    private Integer productId = 29;

    private Integer uid = 1;

    @Before
    public void add(){

        log.info("【添加购物车。。。。。】");

        CartAddForm form = new CartAddForm();
        form.setProductId(productId);
        form.setSelected(true);
        ResponseVo<CartVo> responseVo = cartService.add(uid, form);
        log.info("list={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());
    }

    @Test
    public void list(){

        ResponseVo<CartVo> responseVo = cartService.list(uid);
        log.info("list={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }

    @Test
    public void update(){

        CartUpdateForm form = new CartUpdateForm();
        form.setQuantity(5);
        form.setSelected(false);
        ResponseVo<CartVo> responseVo = cartService.update(uid,productId,form);
        log.info("result={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }

    @After
    public void delete(){

        log.info("【删除购物车。。。。。】");

        ResponseVo<CartVo> responseVo = cartService.delete(uid,productId);
        log.info("result={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }

    @Test
    public void selectAll(){

        ResponseVo<CartVo> responseVo = cartService.selectAll(1);
        log.info("result={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }

    @Test
    public void unSelectAll(){

        ResponseVo<CartVo> responseVo = cartService.unSelectAll(uid);
        log.info("result={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }

    @Test
    public void sum(){

        ResponseVo<Integer> responseVo = cartService.sum(uid);
        log.info("result={}",gson.toJson(responseVo));
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());

    }
}