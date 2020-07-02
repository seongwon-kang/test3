package com.study.demo.v1.vo.apply;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class CreateFormVO {
    private String applyType;
    private String title;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
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
