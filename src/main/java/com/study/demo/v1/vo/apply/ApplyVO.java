package com.study.demo.v1.vo.apply;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ApplyVO {
    private Long applyId;
    private String applyType;
    private String title;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String applyNum;
    private String purpose;
    private LocalDateTime createDate;
    private LocalDateTime modifiedDate;

}
