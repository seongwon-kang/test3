<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
메인
<div id="mainContent">
    <!--TODO 차후 검색을 컬럼으로 할지 아님-->
    <form id="searchForm">
        <select name="seachType">
            <option name="">==선택==</option><!--검색조건 아직 미정-->
            <option name="applyType">문의유형</option><!--검색조건 아직 미정-->
            <option name="title">기업명</option><!--검색조건 아직 미정-->
            <option name="name">성함</option><!--검색조건 아직 미정-->
            <option name="phone">연락처</option><!--검색조건 아직 미정-->
            <option name="email">이메일</option><!--검색조건 아직 미정-->
        </select>
        <input type="text" name="searchText"/>
        <button type="button" id="btnSearch">검색</button>
    </form>

    <form id="listForm">
        <table>
            <tr>
                <th>문의유형</th>
                <th>기업명</th>
                <th>행사시작일</th>
                <th>행사종료일</th>
                <th>목적</th>
                <th>숙박인원</th>
                <th>성함</th>
                <th>이메일</th>
                <th>연락처</th>
                <th>기타문의사항</th>
                <th>예약현황정보</th>
                <th>등록일</th>
            </tr>
            <c:forEach var="apply" items="${list}">
                <tr id="${apply.applyId}">
                    <td><input type="text" name="" value="${apply.applyType}"></td>
                    <td><input type="text" name="" value="${apply.title}"></td>
                    <td><input type="text" name="" value="${apply.startDate}"></td>
                    <td><input type="text" name="" value="${apply.endDate}"></td>
                    <td><input type="text" name="" value="${apply.purpose}"></td>

                    <td><input type="text" name="" value="${apply.applyNum}"></td>
                    <td><input type="text" name="" value="${apply.name}"></td>
                    <td><input type="text" name="" value="${apply.email}"></td>
                    <td><input type="text" name="" value="${apply.phone}"></td>
                    <td><input type="text" name="" value="${apply.comment}"></td>
                    <td><input type="text" name="" value="${apply.comfirm}"></td>
                    <td><input type="text" name="" value="${apply.createDate}"></td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>