package com.study.demo.v1.service;

import com.study.demo.v1.mapper.ApplyMapper;
import com.study.demo.v1.vo.apply.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class ApplyService {

    private final ApplyMapper applyMapper;

    public void read() {
    }

    @Transactional
    public void create(CreateFormVO form) {
        /** 1. APPLY 저장**/
        ApplyVO applyVO = setApplyVO(form);

        /** 2. APPLY_DETAIL 저장**/
        ApplyDetailVO applyDetailVO = setApplyDetailVO(form, applyVO.getApplyId());

        /** 3. APPLY_DETAIL_LOCATION 저장**/
        setApplyDetailLocation(form, applyDetailVO.getApplyDetId());

        /** 4. APPLY_DETAIL_MEAL 저장**/
        setApplyDetailMeal(form, applyDetailVO.getApplyDetId());

        /** 5. APPLY_DETAIL_ROOM 저장**/
        setApplyDetailRoom(form, applyDetailVO.getApplyDetId());
    }


    /** === 생성 매서드 === **/
    private void setApplyDetailRoom(CreateFormVO form, Long applyDetId) {
        List<ApplyDetailRoomVO> roomList = new ArrayList<>();
        for (int i = 0; i < form.getRoomType().size(); i++) {
            ApplyDetailRoomVO applyDetailRoomVO = new ApplyDetailRoomVO();
            applyDetailRoomVO.setApplyDetId(applyDetId);//applyDetId 외래키 주입
            applyDetailRoomVO.setRoomStock(form.getRoomStock().get(i));
            applyDetailRoomVO.setRoomType(form.getRoomType().get(i));
            roomList.add(applyDetailRoomVO);
        }
        for (ApplyDetailRoomVO roomVO : roomList) {
            applyMapper.insertApplyDetailRoom(roomVO);
        }
    }

    private void setApplyDetailMeal(CreateFormVO form, Long applyDetId) {
        List<ApplyDetailMealVO> mealList = new ArrayList<>();

        for (int i = 0; i < form.getMealTime().size(); i++) {
            ApplyDetailMealVO applyDetailMealVO = new ApplyDetailMealVO();
            applyDetailMealVO.setApplyDetId(applyDetId);//applyDetId 외래키 주입
            applyDetailMealVO.setMealTime(form.getMealTime().get(i));
            applyDetailMealVO.setMealType(form.getMealType().get(i));
            mealList.add(applyDetailMealVO);
        }
        for (ApplyDetailMealVO mealVO : mealList) {
            applyMapper.insertApplyDetailMeal(mealVO);
        }
    }

    private void setApplyDetailLocation(CreateFormVO form, Long applyDetId) {
        List<ApplyDetailLocationVO> locationList = new ArrayList<>();

        for (int i = 0; i < form.getLocation().size(); i++) {
            ApplyDetailLocationVO applyDetailLocationVO = new ApplyDetailLocationVO();
            applyDetailLocationVO.setApplyDetId(applyDetId);//applyDetId 외래키 주입
            applyDetailLocationVO.setLocation(form.getLocation().get(i));
            applyDetailLocationVO.setLocationTime(form.getLocationTime().get(i));
            locationList.add(applyDetailLocationVO);
        }

        for (ApplyDetailLocationVO locationVO : locationList) {
            applyMapper.insertApplyDetailLocation(locationVO);
        }
    }

    private ApplyDetailVO setApplyDetailVO(CreateFormVO form, Long applyId) {
        ApplyDetailVO applyDetailVO = new ApplyDetailVO();
        applyDetailVO.setApplyId(applyId); //applyId 외래키 주입
        applyDetailVO.setName(form.getName());
        applyDetailVO.setEmail(form.getEmail());
        applyDetailVO.setPhone(form.getPhone());
        applyDetailVO.setFeedbackType(form.getFeedbackType());
        applyDetailVO.setComment(form.getComment());
        applyDetailVO.setFormAgree(form.getFormAgree());
        applyMapper.insertApplyDetail(applyDetailVO);
        return applyDetailVO;
    }

    private ApplyVO setApplyVO(CreateFormVO form) {
        ApplyVO applyVO = new ApplyVO();
        applyVO.setApplyType(form.getApplyType());
        applyVO.setTitle(form.getTitle());
        applyVO.setStartDate(form.getStartDate());
        applyVO.setEndDate(form.getEndDate());
        applyVO.setApplyNum(form.getApplyNum());
        applyVO.setPurpose(form.getPurpose());

        applyMapper.insertApply(applyVO);
        return applyVO;
    }

}
