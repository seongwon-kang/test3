package com.study.demo.v1.mapper;

import com.study.demo.v1.vo.TestVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestMapper {
    List<TestVO> selectTestList();
}
