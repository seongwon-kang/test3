package com.study.demo.v1.controller;

import com.study.demo.v1.service.ApplyService;
import com.study.demo.v1.vo.apply.CreateFormVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

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

    //문의 예약신청
    @PostMapping("/v1/apply/create")
    public void applyCreateProc( CreateFormVO form){
        applyService.create(form);
    }
}
