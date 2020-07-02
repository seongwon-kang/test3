package com.study.demo.v1.controller;

import com.study.demo.v1.service.ApplyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
@Slf4j
public class ApplyController {

    private final ApplyService applyService;

    @GetMapping("/v1/apply")
    public String applyList(){

        applyService.read();

        return "fLayout:/apply/applyList";
    }

    @GetMapping("/v1/apply/create")
    public String applyCreateForm(){

        return "fLayout:/apply/applyCreateForm";
    }
}
