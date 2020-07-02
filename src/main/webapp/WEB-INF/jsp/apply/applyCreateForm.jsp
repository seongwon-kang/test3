<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<div id="content">
    <form id="createForm" name="form" method="" action="">
        <fieldset>
            <legend>테스트 폼11</legend>
            <ul> <!-- 순서 없는 목록 unordered List-->
                <li>
                    <label for="applyType1">문의유형</label>
                    <input type="radio" id="applyType1" name="applyType" value="ASK">문의
                    <input type="radio" id="applyType2" name="applyType" value="APPLY">예약
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
                    <label for="applyNum">참석인원</label>
                    <input type="text" id="applyNum" name="applyNum">
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