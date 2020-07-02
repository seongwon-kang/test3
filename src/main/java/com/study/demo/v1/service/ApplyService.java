package com.study.demo.v1.service;

import com.study.demo.v1.mapper.ApplyMapper;
import com.study.demo.v1.vo.apply.CreateFormVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ApplyService {

    private final ApplyMapper applyMapper;

    public void read() {
    }

    public void create(CreateFormVO form) {
    }
}
