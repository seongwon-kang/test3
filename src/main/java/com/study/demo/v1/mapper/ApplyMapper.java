package com.study.demo.v1.mapper;

import com.study.demo.v1.dto.apply.ApplyListDto;
import com.study.demo.v1.vo.apply.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ApplyMapper {
    void insertApply(ApplyVO applyVO);

    void insertApplyDetail(ApplyDetailVO applyDetailVO);

    void insertApplyDetailLocation(ApplyDetailLocationVO locationVO);

    void insertApplyDetailMeal(ApplyDetailMealVO mealVO);

    void insertApplyDetailRoom(ApplyDetailRoomVO roomVO);

    List<ApplyListDto> selectApplyList();
}
