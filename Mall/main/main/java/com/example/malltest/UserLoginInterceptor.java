package com.example.malltest;

import com.example.malltest.exception.UserLoginException;
import com.example.malltest.pojo.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.example.malltest.Const.MallConst.CURRENT_USER;

@Slf4j
public class UserLoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        log.info("preHandle...");
        User user = (User) request.getSession().getAttribute(CURRENT_USER);

        if (user == null) {
            log.info("user==null");

            //response.getWriter().print("error");
            throw new UserLoginException();
   //       return ResponseVo.error(ResponseEnum.NEED_LOGIN);
        }

        return true;
    }


}
