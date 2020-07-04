package com.study.demo.v1.dto.apply;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ApplyListDto {

    private Long applyId;
    private Long applyDetId;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String applyType;
    private String comfirm;
    private String title;
    private String applyNum;
    private String purpose;
    private String name;
    private String email;
    private String phone;
    private String feedbackType;
    private String comment;

    private LocalDateTime createDate;
    private LocalDateTime modifiedDate;
}
