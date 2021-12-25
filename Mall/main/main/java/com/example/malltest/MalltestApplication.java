package com.example.malltest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.example.malltest.dao")
public class MalltestApplication {

    public static void main(String[] args) {
        SpringApplication.run(MalltestApplication.class, args);
    }

}
