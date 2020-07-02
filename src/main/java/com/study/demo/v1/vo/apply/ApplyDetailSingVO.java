package com.study.demo.v1.vo.apply;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ApplyDetailSingVO {
    private Long applyDetSignId;
    private Long applyDetId;
    private String companyCode;
    private String name;
    private String sign;
    private LocalDateTime createDate;
    private LocalDateTime modifiedDate;
}
