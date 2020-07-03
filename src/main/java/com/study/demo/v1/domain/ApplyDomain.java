package com.study.demo.v1.domain;

import com.study.demo.v1.dto.apply.ApplyListDto;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ApplyDomain {
    private List<ApplyListDto> applyList = new ArrayList<>();
}
