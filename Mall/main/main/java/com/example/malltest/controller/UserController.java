package com.example.malltest.controller;

import com.example.malltest.form.UserLoginForm;
import com.example.malltest.form.UserRegisterForm;
import com.example.malltest.pojo.User;
import com.example.malltest.service.IUserService;
import com.example.malltest.vo.ResponseVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Objects;

import static com.example.malltest.Const.MallConst.CURRENT_USER;
import static com.example.malltest.enums.ResponseEnum.PARAM_ERROR;


@RestController
@Slf4j
public class UserController {

    @Autowired
    private IUserService userService;

    @PostMapping("/user/register")
//    public void register(@RequestParam(value="username") String userName){
//        log.info("username={}",userName);
//    }

    public ResponseVo<User> register(@Valid @RequestBody UserRegisterForm userForm,
                               BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            log.error("注册提交的参数有错误，{} {}",
                    Objects.requireNonNull(bindingResult.getFieldError()).getField(),//类型
                    bindingResult.getFieldError().getDefaultMessage());//默认是不能为空
            return ResponseVo.error(PARAM_ERROR, bindingResult);
        }
//        log.info("username={}",userForm.getUsername());
//        //return ResponseVo.success();
//        return ResponseVo.error(ResponseEnum.NEED_LOGIN);//可以把包名ResponseEnum去掉
        User user = new User();
        BeanUtils.copyProperties(userForm,user);//类复制？

        return userService.register(user);
    }

    @PostMapping("/user/login")
    public ResponseVo<User> login(@Valid @RequestBody UserLoginForm userLoginForm,
                                  BindingResult bindingResult,
                                  HttpSession session) {
        if (bindingResult.hasErrors()) {
            return ResponseVo.error(PARAM_ERROR, bindingResult);
        }

        ResponseVo<User> userResponseVo = userService.login(userLoginForm.getUsername(), userLoginForm.getPassword());

        //设置Session
        session.setAttribute(CURRENT_USER,userResponseVo.getData());

        log.info("/login sessionId={}", session.getId());//打印cooki

        return userResponseVo;
    }

    //session保存在内存里，改进版：token+redis
    @GetMapping("/user")
    public ResponseVo<User> userInfo(HttpSession session) {
        log.info("/user sessionId={}", session.getId());

        User user = (User)session.getAttribute(CURRENT_USER);

        return  ResponseVo.success(user);
    }

    @PostMapping("/user/logout")
    public ResponseVo logout(HttpSession session) {
        log.info("/user/logout sessionId={}", session.getId());

        session.removeAttribute(CURRENT_USER);

        return ResponseVo.success();
    }
}
