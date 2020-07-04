package com.study.demo.v1.mapper;

import com.study.demo.v1.dto.apply.ApplyListDto;
import com.study.demo.v1.dto.apply.ApplyViewDto;
import com.study.demo.v1.vo.apply.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ApplyMapper {

    //등록
    void insertApply(ApplyVO applyVO);
    void insertApplyDetail(ApplyDetailVO applyDetailVO);
    void insertApplyDetailLocation(ApplyDetailLocationVO locationVO);
    void insertApplyDetailMeal(ApplyDetailMealVO mealVO);
    void insertApplyDetailRoom(ApplyDetailRoomVO roomVO);

    //목록
    List<ApplyListDto> selectApplyList();

    //상세
    ApplyViewDto selectApply(Long attendId);
    List<ApplyDetailLocationVO> selectApplyDetLocation(Long applyDetId);
    List<ApplyDetailMealVO> selectApplyDetMeal(Long applyDetId);
    List<ApplyDetailRoomVO> selectApplyDetRoom(Long applyDetId);
}
