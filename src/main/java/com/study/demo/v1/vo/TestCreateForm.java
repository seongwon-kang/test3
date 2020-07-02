package com.study.demo.v1.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class TestCreateForm {
    private String attendType;
    private String title;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private int attendNum;
    private String name;
    private String email;
    private String phone;
    private String feedbackType;
    private String comment;
    private String formAgree;
}
