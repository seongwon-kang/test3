<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<div id="content">
    <form id="createForm" name="form" method="POST" action="/v1/test">
        <fieldset>
            <legend>테스트 폼11</legend>
            <ul> <!-- 순서 없는 목록 unordered List-->
                <li>
                    <label for="attendType1">문의유형</label>
                    <input type="radio" id="attendType1" name="attendType" value="ASK">문의
                    <input type="radio" id="attendType2" name="attendType" value="APPLY">예약
                </li>
                <li>
                    <label for="title">기업명 / 행사정보</label>
                    <input type="text" id="title" name="title">
                </li>
                <li>
                    <label for="startDate">행사시작일</label>
                    <input type="datetime-local" id="startDate" name="startDate">
                </li>
                <li>
                    <label for="endDate">행사종료일</label>
                    <input type="datetime-local" id="endDate" name="endDate">
                </li>
                <li>
                    <label for="attendNum">참석인원</label>
                    <input type="text" id="attendNum" name="attendNum">
                </li>
                <!--ADD 버튼으로 늘어난다고 가정함-->
                <li>
                    <label for="purpose">행사목적</label>
                    <select name="purpose" id="purpose">
                        <option value="">선택</option>
                        <option value="OT">신입사원연수</option>
                        <option value="SEMINAR">임직원세미나</option>
                        <option value="EVENT">기업연회</option>
                        <option value="ETC">기타</option>
                    </select>
                </li>
                <li>
                    <label>희망행사장소</label>
                    <select id="location1" name="location">
                        <option value="">==선택==</option>
                        <option value="G">그랜드볼륨</option>
                        <option value="I">이노베니션</option>
                        <option value="C">클래스룸</option>
                        <option value="D">분임토의실</option>
                    </select>
                    <select id="locationTime1" name="locationTime" >
                        <option value="">선택</option>
                        <option value="A">10:00~11:50</option>
                        <option value="B">13:00~15:50</option>
                        <option value="C">16:00~17:50</option>
                    </select>
                </li>
                <li>
                    <label>희망행사장소</label>
                    <select id="location2" name="location">
                        <option value="">==선택==</option>
                        <option value="G">그랜드볼륨</option>
                        <option value="I">이노베니션</option>
                        <option value="C">클래스룸</option>
                        <option value="D">분임토의실</option>
                    </select>
                    <select id="locationTime2" name="locationTime" >
                        <option value="">선택</option>
                        <option value="A">10:00~11:50</option>
                        <option value="B">13:00~15:50</option>
                        <option value="C">16:00~17:50</option>
                    </select>
                </li>
                <li>
                    <label>희망행사장소</label>
                    <select id="location3" name="location">
                        <option value="">==선택==</option>
                        <option value="G">그랜드볼륨</option>
                        <option value="I">이노베니션</option>
                        <option value="C">클래스룸</option>
                        <option value="D">분임토의실</option>
                    </select>
                    <select id="locationTime3" name="locationTime" >
                        <option value="">선택</option>
                        <option value="A">10:00~11:50</option>
                        <option value="B">13:00~15:50</option>
                        <option value="C">16:00~17:50</option>
                    </select>
                </li>
                <li>
                    <label>희망행사장소</label>
                    <select id="location4" name="location">
                        <option value="">==선택==</option>
                        <option value="G">그랜드볼륨</option>
                        <option value="I">이노베니션</option>
                        <option value="C">클래스룸</option>
                        <option value="D">분임토의실</option>
                    </select>
                    <select id="locationTime4" name="locationTime" >
                        <option value="">선택</option>
                        <option value="A">10:00~11:50</option>
                        <option value="B">13:00~15:50</option>
                        <option value="C">16:00~17:50</option>
                    </select>
                </li>
                <!--ADD 버튼으로 늘어난다고 가정함-->
                <li>
                    <label for="mealTime1">식사선택</label>
                    <select name="mealTime" id="mealTime1">
                        <option value="">선택</option>
                        <option value="B">아침</option>
                        <option value="L">점심</option>
                        <option value="D">저녁</option>
                    </select>
                    <select name="mealType" id="mealType1">
                        <option value="">선택</option>
                        <option value="NOMAL">일반식</option>
                        <option value="DINNER">만찬</option>
                        <option value="SNACK">간식</option>
                    </select>
                </li>
                <li>
                    <label for="mealTime2">식사선택</label>
                    <select name="mealTime" id="mealTime2">
                        <option value="">선택</option>
                        <option value="B">아침</option>
                        <option value="L">점심</option>
                        <option value="D">저녁</option>
                    </select>
                    <select name="mealType" id="mealType2">
                        <option value="">선택</option>
                        <option value="NOMAL">일반식</option>
                        <option value="DINNER">만찬</option>
                        <option value="SNACK">간식</option>
                    </select>
                </li>
                <li>
                    <label for="mealTime3">식사선택</label>
                    <select name="mealTime" id="mealTime3">
                        <option value="">선택</option>
                        <option value="B">아침</option>
                        <option value="L">점심</option>
                        <option value="D">저녁</option>
                    </select>
                    <select name="mealType" id="mealType3">
                        <option value="">선택</option>
                        <option value="NOMAL">일반식</option>
                        <option value="DINNER">만찬</option>
                        <option value="SNACK">간식</option>
                    </select>
                </li>
                <!--ADD 버튼으로 늘어난다고 가정함-->
                <li>
                    <label for="roomType1">객실선택</label>
                    <select name="roomType" id="roomType1">
                        <option value="">선택</option>
                        <option value="DELUXE">DELUXE</option>
                        <option value="SUITES">SUITES</option>
                    </select>
                    <label for="roomStockQuantity1">수량</label>
                    <input type="text" id="roomStockQuantity1" name="roomStock">
                </li>
                <li>
                    <label for="roomType2">객실선택</label>
                    <select name="roomType" id="roomType2">
                        <option value="">선택</option>
                        <option value="DELUXE">DELUXE</option>
                        <option value="SUITES">SUITES</option>
                    </select>
                    <label for="roomStockQuantity2">수량</label>
                    <input type="text" id="roomStockQuantity2" name="roomStock"/>
                </li>
                <li>
                    <label for="name">예약자명</label>
                    <input type="text" id="name" name="name">
                </li>
                <li>
                    <label for="email">이메일</label>
                    <input type="text" id="email" name="email">
                </li>
                <li>
                    <label for="phone">연락처</label>
                    <input type="text" id="phone" name="phone">
                </li>
                <li>
                    <label for="feedbackType1">답변방법</label>
                    <input type="radio" id="feedbackType1" name="feedbackType" value="PHONE">전화
                    <input type="radio" id="feedbackType2" name="feedbackType" value="EMAIL">EMAIL
                </li>
                <li>
                    <label for="comment">기타요청사항</label>
                    <input type="text" id="comment" name="comment">
                </li>
                <li>
                    <label for="formAgree">개인정보 이용동의</label>
                    <input type="text" id="formAgree" name="formAgree">
                </li>
                <li>
                    <button id="btnSubmit" type="button">테스트등록</button>
                </li>
            </ul>
        </fieldset>
    </form>
</div>
<script>
    let main = {
        init: function () {
            main.$content = $("#content");
            main.$frm = main.$content.find("#createForm");
            main.bind();

        }, bind: function () {
            main.$content.find("#btnSubmit").on("click", main.form.submit);

        }, form: {
            submit: function () {
                let params = main.$content.find("#createForm").serializeObject();
                console.log(params);

                /** ajax레퍼런스**/
                $.ajax({
                    url: "/v1/test", // 클라이언트가 요청을 보낼 서버의 URL 주소
                    type: "POST",                             // HTTP 요청 방식(GET, POST)
                    data: JSON.stringify(params),                // HTTP 요청과 함께 서버로 보낼 데이터
                    dataType: "json",// 서버에서 보내줄 데이터의 타입
                    contentType:"application/json"
                })
                    // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
                    .done(function (json) {
                        $("<h1>").text(json.title).appendTo("body");
                        $("<div class=\"content\">").html(json.html).appendTo("body");
                    })
                    // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨.
                    .fail(function (xhr, status, errorThrown) {
                        $("#text").html("오류가 발생했습니다.<br>")
                            .append("오류명: " + errorThrown + "<br>")
                            .append("상태: " + status);
                    })
                    // HTTP 요청이 성공하거나 실패하는 것에 상관없이 언제나 always() 메소드가 실행됨.
                    .always(function (xhr, status) {
                        $("#text").html("요청이 완료되었습니다!");
                    });

            }
        }
    }

    $(document).ready(function () {
        main.init();
    })
</script>