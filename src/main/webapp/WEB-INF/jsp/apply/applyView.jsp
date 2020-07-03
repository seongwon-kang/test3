<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div id="content">
    <form id="viewForm" name="viewForm" method="" action="">
        <fieldset>
            <legend>테스트 폼11</legend>
            <ul> <!-- 순서 없는 목록 unordered List-->
                <li>
                    <label for="applyType1">문의유형</label>
                    <input type="radio" id="applyType1" name="applyType" <c:if test="${view.detail.applyType eq 'ASK'}"> checked="checked"</c:if> value="ASK">문의
                    <input type="radio" id="applyType2" name="applyType" <c:if test="${view.detail.applyType eq 'APPLY'}"> checked="checked"</c:if>   value="APPLY">예약
                </li>
                <li>
                    <label for="title">기업명 / 행사정보</label>
                    <input type="text" id="title" name="title" value="${view.detail.title}">
                </li>
                <li>
                    <label for="startDate">행사시작일</label>
                    <input type="datetime-local" id="startDate" name="startDate"> <!--TODO 날짜 포맷팅 해야함-->
                </li>
                <li>
                    <label for="endDate">행사종료일</label>
                    <input type="datetime-local" id="endDate" name="endDate"><!--TODO 날짜 포맷팅 해야함-->
                </li>
                <li>
                    <label for="applyNum">참석인원</label>
                    <input type="text" id="applyNum" name="applyNum" value="${view.detail.applyNum}">
                </li>
                <!--ADD 버튼으로 늘어난다고 가정함-->
                <li>
                    <label for="purpose">행사목적</label>
                    <select name="purpose" id="purpose">
                        <option value="">선택</option>
                        <option value="OT" <c:if test="${view.detail.purpose eq 'OT'}"> selected="selected"</c:if>>신입사원연수</option>
                        <option value="SEMINAR" <c:if test="${view.detail.purpose eq 'SEMINAR'}"> selected="selected"</c:if>>임직원세미나</option>
                        <option value="EVENT" <c:if test="${view.detail.purpose eq 'EVENT'}"> selected="selected"</c:if>>기업연회</option>
                        <option value="ETC" <c:if test="${view.detail.purpose eq 'ETC'}"> selected="selected"</c:if>>기타</option>
                    </select>
                </li>
                ${view.detail.location}
                <c:forEach var="loc" items="${view.detail.location}">
                <li>
                    <label>희망행사장소</label>
                    <select id="location1" name="location">
                        <option value="">==선택==</option>
                        <option value="G"<c:if test="${loc.location eq 'G'}"> selected="selected"</c:if>>그랜드볼륨</option>
                        <option value="I"<c:if test="${loc.location eq 'I'}"> selected="selected"</c:if>>이노베니션</option>
                        <option value="C"<c:if test="${loc.location eq 'C'}"> selected="selected"</c:if>>클래스룸</option>
                        <option value="D"<c:if test="${loc.location eq 'D'}"> selected="selected"</c:if>>분임토의실</option>
                    </select>
                    <select id="locationTime1" name="locationTime">
                        <option value="">선택</option>
                        <option value="A"<c:if test="${loc.locationTime eq 'A'}"> selected="selected"</c:if>>10:00~11:50</option>
                        <option value="B"<c:if test="${loc.locationTime eq 'B'}"> selected="selected"</c:if>>13:00~15:50</option>
                        <option value="C"<c:if test="${loc.locationTime eq 'C'}"> selected="selected"</c:if>>16:00~17:50</option>
                    </select>
                </li>
                </c:forEach>

                <!--ADD 버튼으로 늘어난다고 가정함-->
                ${view.detail.meal}
                <c:forEach var="meal" items="${view.detail.meal}">
                <li>
                    <label for="mealTime1">식사선택</label>
                    <select name="mealTime" id="mealTime1">
                        <option value="">선택</option>
                        <option value="B"<c:if test="${meal.mealTime eq 'A'}"> selected="selected"</c:if>>아침</option>
                        <option value="L"<c:if test="${meal.mealTime eq 'B'}"> selected="selected"</c:if>>점심</option>
                        <option value="D"<c:if test="${meal.mealTime eq 'C'}"> selected="selected"</c:if>>저녁</option>
                    </select>
                    <select name="mealType" id="mealType1">
                        <option value="">선택</option>
                        <option value="NOMAL"<c:if test="${meal.mealType eq 'A'}"> selected="selected"</c:if>>일반식</option>
                        <option value="DINNER"<c:if test="${meal.mealType eq 'A'}"> selected="selected"</c:if>>만찬</option>
                        <option value="SNACK"<c:if test="${meal.mealType eq 'A'}"> selected="selected"</c:if>>간식</option>
                    </select>
                </li>
                </c:forEach>

                <!--ADD 버튼으로 늘어난다고 가정함-->
                <c:forEach var="room" items="${view.detail.room}">
                <li>
                    <label for="roomType1">객실선택</label>
                    <select name="roomType" id="roomType1">
                        <option value="">선택</option>
                        <option value="DELUXE"<c:if test="${room.roomType eq 'A'}"> selected="selected"</c:if>>DELUXE</option>
                        <option value="SUITES"<c:if test="${room.roomType eq 'A'}"> selected="selected"</c:if>>SUITES</option>
                    </select>
                    <label for="roomStockQuantity1">수량</label>
                    <input type="text" id="roomStockQuantity1" name="roomStock" value="${room.roomStock}">
                </li>
                </c:forEach>

                <li>
                    <label for="name">예약자명</label>
                    <input type="text" id="name" name="name" value="${view.detail.name}">
                </li>
                <li>
                    <label for="email">이메일</label>
                    <input type="text" id="email" name="email" value="${view.detail.email}">
                </li>
                <li>
                    <label for="phone">연락처</label>
                    <input type="text" id="phone" name="phone" value="${view.detail.phone}">
                </li>
                <li>
                    <label for="feedbackType1">답변방법</label>
                    <input type="radio" id="feedbackType1" name="feedbackType" value="PHONE" <c:if test="${view.detail.feedbackType eq 'PHONE'}"> checked="checked"</c:if>>전화
                    <input type="radio" id="feedbackType2" name="feedbackType" value="EMAIL" <c:if test="${view.detail.feedbackType eq 'EMAIL'}"> checked="checked"</c:if>>EMAIL
                </li>
                <li>
                    <label for="comment">기타요청사항</label>
                    <input type="text" id="comment" name="comment" value="${view.detail.comment}">
                </li>
                <li>
                    <button id="btnSubmit" type="button">테스트등록</button>
                </li>
            </ul>
        </fieldset>
    </form>
</div>
<script>
    $(document).ready(function () {
        main.init();
    })
</script>