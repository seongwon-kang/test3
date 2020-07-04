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

    public ApplyVO setDataWithForm(CreateFormVO form){
        this.setApplyType(form.getApplyType());
        this.setTitle(form.getTitle());
        this.setStartDate(form.getStartDate());
        this.setEndDate(form.getEndDate());
        this.setApplyNum(form.getApplyNum());
        this.setPurpose(form.getPurpose());

        return this;
    }
}
