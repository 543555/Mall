package com.example.malltest.vo;

import com.example.malltest.enums.ResponseEnum;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;
import org.springframework.validation.BindingResult;

@Data
@JsonInclude(value = JsonInclude.Include.NON_NULL)
public class ResponseVo <T>{
    private Integer status;
    private String msg;
    private T data;

    public ResponseVo(Integer status,String msg){
        this.status=status;
        this.msg=msg;
    }

    public ResponseVo(Integer status,T data){
        this.status=status;
        this.data=data;
    }

    public static <T> ResponseVo <T> successByMsg(String msg){
        return new ResponseVo <T> (ResponseEnum.SUCCESS.getCode(),msg);
    }

    public static <T> ResponseVo <T> success(T data){
        return new ResponseVo <T> (ResponseEnum.SUCCESS.getCode(),data);
    }

    public static <T> ResponseVo <T> success(){
        return new ResponseVo <T> (ResponseEnum.SUCCESS.getCode(),ResponseEnum.SUCCESS.getDesc());
    }

    public static <T> ResponseVo <T> error(ResponseEnum responseEnum){
        return new ResponseVo <T> (responseEnum.getCode(),responseEnum.getDesc());
    }

    public static <T> ResponseVo <T> error(ResponseEnum responseEnum,String msg){
        return new ResponseVo <T> (responseEnum.getCode(),msg);
    }

    public static <T> ResponseVo <T> error(ResponseEnum responseEnum, BindingResult bindingResult){
        return new ResponseVo <T> (responseEnum.getCode(),
                bindingResult.getFieldError().getField()+" "+bindingResult.getFieldError().getDefaultMessage());
    }
}
