package com.example.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.LinkedHashMap;
import java.util.Map;
@Getter
@AllArgsConstructor
public enum ColorsEnum {
    success(0,"border-left-success","text-success","bg-success"),
    info(1,"border-left-info","text-info","bg-info"),
    secondary(2,"border-left-secondary","text-secondary","bg-secondary"),
    primary(3,"border-left-primary","text-primary","bg-primary"),
    danger(4,"border-left-danger","text-danger","bg-danger");


    private Integer code;
    private String sideColor;
    private String textColor;
    private String bgColor;



}
