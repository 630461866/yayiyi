package com.qf.exception;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @Author: zhangjia
 * @Date:2019/12/13
 */
@ControllerAdvice
public class ExceptionTest {
    @ExceptionHandler
    public String exception(IllegalArgumentException exception){
        System.out.println("这是一个全局异常处理。。");
        return "error";
    }
}
