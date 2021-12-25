package com.example.malltest.service;

import com.example.malltest.enums.ResponseEnum;
import com.example.malltest.form.ShippingForm;
import com.example.malltest.vo.ResponseVo;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import org.testng.Assert;

import java.util.Map;

@RunWith(SpringRunner.class)
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@SpringBootTest
@Slf4j
@Transactional
public class IShippingServiceTest {


    @Autowired
    private IShippingService shippingService;

    private Integer uid = 1;

    private ShippingForm form;

    private Integer shippingId;

    @Test
    public void before() {
        log.info("添加地址");
        ShippingForm form = new ShippingForm();
        form.setReceiverName("陈大浩");
        form.setReceiverAddress("华南鲤鱼大学");
        form.setReceiverCity("广东");
        form.setReceiverMobile("12345678910");
        form.setReceiverPhone("0209394959");
        form.setReceiverProvince("广东省");
        form.setReceiverDistrict("番禺区");
        form.setReceiverZip("600000");
        this.form = form;

        add();
    }

    public void add() {
        ResponseVo<Map<String, Integer>> responseVo = shippingService.add(uid, form);
        log.info("result={}", responseVo);
        this.shippingId = responseVo.getData().get("shippingId");
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());
    }

    @Test
    public void delete() {
        log.info("删除地址");
        ResponseVo responseVo = shippingService.delete(uid, 31);
        log.info("result={}", responseVo);
        org.junit.Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());
    }

    @Test
    public void update() {
        ShippingForm form = new ShippingForm();
        form.setReceiverCity("杭州市");
        ResponseVo responseVo = shippingService.update(uid, 31, form);
        log.info("result={}", responseVo);
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());
    }

    @Test
    public void list() {
        ResponseVo responseVo = shippingService.list(uid, 1, 10);
        log.info("result={}", responseVo);
        Assert.assertEquals(ResponseEnum.SUCCESS.getCode(), responseVo.getStatus());
    }
}