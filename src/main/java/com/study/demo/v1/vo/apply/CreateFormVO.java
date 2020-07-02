package com.study.demo.v1.vo.apply;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class CreateFormVO {
    private String applyType;
    private String title;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String applyNum;
    private String purpose;

    private String name;
    private String email;
    private String phone;
    private String feedbackType;
    private String comment;
    private String formAgree;

    private List<String> location;
    private List<String> locationTime;

    private List<String> mealTime;
    private List<String> mealType;

    private List<String> roomType;
    private List<String> roomStock;


}
