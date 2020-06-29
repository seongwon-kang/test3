package com.study.demo.v1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/v1")
public class TestController {

    @GetMapping("/test")
    public String test(){
        return "test";
    }

}
