package com.study.demo.v1.vo.apply;

import lombok.Data;

@Data
public class ApplyDetailVO {
    private Long applyDetId;
    private Long applyId;
    private String name;
    private String email;
    private String phone;
    private String feedbackType;
    private String comment;
    private String formAgree;

    public ApplyDetailVO setDataWithForm(CreateFormVO form) {
        this.setName(form.getName());
        this.setEmail(form.getEmail());
        this.setPhone(form.getPhone());
        this.setFeedbackType(form.getFeedbackType());
        this.setComment(form.getComment());
        this.setFormAgree(form.getFormAgree());

        return this;
    }
}
