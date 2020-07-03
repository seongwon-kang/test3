package com.study.demo.v1.domain;

import com.study.demo.v1.dto.apply.ApplyListDto;
import com.study.demo.v1.dto.apply.ApplyViewDto;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ApplyDomain {

    //뷰화면 리스트.
    private List<ApplyListDto> applyList = new ArrayList<>();

    //뷰화면 상세
    private ApplyViewDto detail;
}
