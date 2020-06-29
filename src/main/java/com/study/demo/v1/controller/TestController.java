package com.study.demo.v1.controller;

import com.study.demo.v1.service.TestService;
import com.study.demo.v1.vo.TestVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/v1")
@RequiredArgsConstructor
public class TestController {

    private final TestService testService;

    @GetMapping("/test")
    public String test(Model model){
        List<TestVO> list = testService.read();

        model.addAttribute("list", list);
        return "fLayout:/test/test";
    }

}
