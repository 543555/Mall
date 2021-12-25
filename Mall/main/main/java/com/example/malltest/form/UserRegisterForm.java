package com.example.malltest.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class UserRegisterForm {

    /**
     * @NotBlank 用于String 判断空格
     * @NotEmpty 用于集合
     * @NotNull
     */

    //@NotBlank(message = "用户名不能为空")
    @NotBlank
    private String username;

    @NotBlank
    private String password;

    @NotBlank
    private String email;
}
