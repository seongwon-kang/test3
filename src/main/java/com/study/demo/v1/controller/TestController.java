package com.study.demo.v1.controller;

import com.study.demo.v1.service.TestService;
import com.study.demo.v1.vo.TestCreateForm;
import com.study.demo.v1.vo.TestVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/v1")
@RequiredArgsConstructor
@Slf4j
public class TestController {

    private final TestService testService;

    @GetMapping("/test")
    public String createForm(Model model){
        List<TestVO> list = testService.read();

        return "fLayout:/test/createForm";
    }

    @PostMapping("/test")
    public String createProc(@RequestBody TestCreateForm form){
        log.info("form:{}", form);

        return "redirect:/test";
    }


}
