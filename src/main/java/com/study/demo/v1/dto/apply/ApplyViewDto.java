package com.study.demo.v1.dto.apply;

import com.study.demo.v1.vo.apply.ApplyDetailLocationVO;
import com.study.demo.v1.vo.apply.ApplyDetailMealVO;
import com.study.demo.v1.vo.apply.ApplyDetailRoomVO;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
public class ApplyViewDto {

    private Long applyId;
    private Long applyDetId;
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
    private String comfirm;
    private LocalDateTime createDate;
    private LocalDateTime modifiedDate;

    private List<ApplyDetailLocationVO> location = new ArrayList<>();
    private List<ApplyDetailMealVO> meal = new ArrayList<>();
    private List<ApplyDetailRoomVO> room = new ArrayList<>();


}
