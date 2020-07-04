package com.study.demo.v1.controller;

import com.study.demo.v1.domain.ApplyDomain;
import com.study.demo.v1.dto.apply.ApplyListDto;
import com.study.demo.v1.service.ApplyService;
import com.study.demo.v1.vo.apply.CreateFormVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class ApplyController {

    private final ApplyService applyService;

    //리스트
    @GetMapping("/v1/apply")
    public String applyList(Model model) {
        ApplyDomain condition = applyService.read();
        model.addAttribute("list", condition.getApplyList());

        return "fLayout:/apply/applyList";
    }

    @GetMapping("/v1/apply/view/{attendId}")
    public String applyView(@PathVariable("attendId")Long applyId, Model model) {
        ApplyDomain applyView = applyService.read(applyId);
        model.addAttribute("view", applyView);

        return "fLayout:/apply/applyView";
    }

    @GetMapping("/v1/apply/create")
    public String applyCreateForm() {

        return "fLayout:/apply/applyCreateForm";
    }

    //문의 예약신청
    @PostMapping("/v1/apply/create")
    public void applyCreateProc( CreateFormVO form) {
        applyService.create(form);
    }
}
