package com.study.demo.v1.service;

import com.study.demo.v1.mapper.TestMapper;
import com.study.demo.v1.vo.TestVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class TestService {

    private final TestMapper testMapper;

    public List<TestVO> read() {
        return testMapper.selectTestList();
    }
}
