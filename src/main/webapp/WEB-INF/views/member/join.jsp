<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- 230808 장유정_회원가입 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>

<style>
/* 중복아이디 존재하지 않는경우 */
.id_input_re_1{
    color: green;
    display: none;
}
/* 중복아이디 존재하는 경우 */
.id_input_re_2{
    color: red;
    display: none;
}

/* 인증번호 전송 버튼 스타일 */
.send_verification_button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
}

.send_verification_button:hover {
    background-color: #0056b3;
}

 
#mail_check_input_box_false{
    background-color:#ebebe4;
}
 
#mail_check_input_box_true{
    background-color:white;
    
     
}
.correct {
    color: green;
}

.incorrect {
    color: red;
}
 
/* 인증번호 전송 버튼 스타일  */
.send_verification_button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
}

.send_verification_button:hover {
    background-color: #0056b3;
}

/* 주소 찾기 버튼 스타일 */
.address_button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
     width: auto; /* 자동 너비 설정 */
     box-sizing: content-box; /* 내용 박스 크기로 설정 */
      display: inline-block; /* 인라인 블록 요소로 변경 */
}

.address_button:hover {
    background-color: #0056b3;
}

/* 유효성 검사 문구 */
 
.final_id_ck{
    display: none;
}
.final_pw_ck{
    display: none;
}
.final_pwck_ck{
    display: none;
}
.final_name_ck{
    display: none;
}
.final_mail_ck{
    display: none;
}
.final_addr_ck{
    display: none;
}

/* 비밀번호 확인 일치 유효성 검사*/
.pwck_input_re_1 {
	color: green;
	display: none;
}

.pwck_input_re_2 {
	color: green;
	display: none;
}

 

</style>


</head>
<body>

<div class="wrapper">
    <form id="join_form" method="post">
        <div class="wrap">
			<div class="subjecet">
				<span>회원가입</span>
			</div>
			<div class="id_wrap">
				<div class="id_name" >아이디</div>
				<div class="id_input_box">
					<input class="id_input" name="userId">
				</div>
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span>
			</div>
			<div class="pw_wrap">
				<div class="pw_name">비밀번호</div>
				<div class="pw_input_box">
					<input class="pw_input" name="userPassword">
				</div>
				<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
			</div>
			<div class="pwck_wrap">
				<div class="pwck_name">비밀번호 확인</div>
				<div class="pwck_input_box">
					<input class="pwck_input" name="userPasswordCheck">
				</div>
				<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
				<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>
			
			<div class="mail_wrap">
				<div class="mail_name">이메일</div> 
				<div class="mail_input_box">
					<input class="mail_input" name="userEmail">
				</div>
				<span class="final_mail_ck">이메일을 입력해주세요.</span>
				<span class="mail_input_box_warn"></span>
				<div class="mail_check_wrap">
					<div class="mail_check_input_box" id="mail_check_input_box_false">
						<input class="mail_check_input" disabled="disabled">
					</div>
				<div class="mail_check_button">
    				<span class="send_verification_button">인증번호 전송</span>
				</div>
					<div class="clearfix"></div>
					<span id="mail_check_input_box_warn"></span>
				</div>
				
			</div>
			
		
		
			<div class="user_wrap">
				<div class="user_name">이름</div>
				<div class="user_input_box">
					<input class="user_input" name="userName">
				</div>
				<span class="final_name_ck">이름을 입력해주세요.</span>
			</div>
			<div class="user_wrap">
				<div class="user_PhoneNo">핸드폰 번호</div>
				<div class="user_input_box">
					<input class="user_input" name="userPhoneNo">
				</div>
			</div>

			<div class="address_wrap">
				<div class="address_name">주소</div>
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1" name="userAddress" readonly="readonly">
					</div>
					<div class="address_button" onclick="execution_daum_address()">
					    <span>주소 찾기</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2" name="userAddress2" readonly="readonly">
					</div>
				</div>
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3" name="userAddress3" readonly="readonly">
					</div>
				</div>
				<span class="final_addr_ck">주소를 입력해주세요.</span>
			</div>
			
			 <div class="join_button_wrap">
                <input type="button" class="join_button" value="가입하기">
             </div>
        </div>
    </form>
</div>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


var code = "";                //이메일 전송 인증번호 저장을 위한 코드


// 유효성 검사 통과 유무 변수
var idCheck = false;	//아이디
var idckCheck = false;	//아이디 중복 검사
var pwCheck = false;	//비번
var pwckCheck = false;	//비번 확인
var pwckcorCheck = false;	//비번 확인 일치 확인
var nameCheck = false;	//이름
var mailCheck = false; //이메일
var mailnumCheck = false;	//이메일 인증 번호 확인
var addressCheck = false; //주소



// 회원가입 버튼(회원가입 기능 작동)
$(".join_button").click(function(){

	//입력 값 변수
	var id = $('.id_input').val();
	var pw = $('.pw_input').val();
	var pwck = $('.pwck_input').val();
	var name = $('.name_input').val();
	var mail = $('.mail_input').val();
	var addr = $('.address_input_3').val();
	
	//아이디 유효성 검사
	if(id == "") {
		$('.final_id_ck').css('display', 'block');
		idCheck = false;
	} else {
		$('.final_id_ck').css('display', 'none');
		idCheck = true;
	}
	
	//비밀번호 유효성 검사
	if(pw == ""){
		$('.final_pw_ck').css('display', 'block');
		pwCheck = false;
	} else {
		$('.final_pw_ck').css('display', 'none');
		pwCheck = true;
	}
	
	//비밀번호 확인 유효성 검사
	if(pwck == "") {
		$('.final_pwck_ck').css('display', 'block');
		pwckCheck = false;
	} else {
		$('.final_pwck_ck').css('display', 'none');
		pwckCheck = true;
	}
	
	// 이름 유효성 검사
	if(name == ""){
		$('.final_name_ck').css('display','block');
		nameCheck = false;
	} else {
		$('.final_name_ck').css('display', 'none');
		nameCheck = true;
	}
	

    /* 이메일 유효성 검사 */
    if(mail == ""){
        $('.final_mail_ck').css('display','block');
        mailCheck = false;
    }else{
        $('.final_mail_ck').css('display', 'none');
        mailCheck = true;
    }
	
	
	// 주소 유효성 검사
	if(addr == ""){
		$('.final_addr_ck').css('display', 'block');
		addressCheck = false;
	} else {
		$('.final_addr_ck').css('display', 'none');
		addressCheck = true;
	}
	
	// 최종 유효성 검사
	if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck) {
	
		$("#join_form").attr("action", "${contextPath}/member/join");
	    $("#join_form").submit();
	}
	
	return false; //join_button click 정상 종료되지 못할 경우 대비
});


//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function() {
    var memberId = $('.id_input').val();
    var data = { memberId: memberId };

    $.ajax({
        type: "post",
        url: "${contextPath}/member/memberIdChk",
        data: data,
        success: function (result) {
            if (result === 'success') {
                $('.id_input_re_1').css("display", "inline-block");
                $('.id_input_re_2').css("display", "none");
            	idckCheck = true; //아이디 중복이 없는 경우
            } else if (result === 'fail') {
                $('.id_input_re_2').css("display", "inline-block");
                $('.id_input_re_1').css("display", "none");
            	idckCheck = false; //아이디 중복된 경우
            }
        },
        error: function(xhr, status, error){
            console.error("AJAX Error:", status, error);
        }
    });

});// function 종료

//2308151255 장유정_인증메일 관련 추가
$('.send_verification_button').click(function() {
    // 인증번호 전송 동작 구현
    // AJAX 요청 등의 코드를 추가하여 서버로 인증번호 요청을 보내고 응답을 처리
});



/* 인증번호 이메일 전송 */
$(".mail_check_button").click(function(){
    var email = $(".mail_input").val();            // 입력한 이메일
    var cehckBox = $(".mail_check_input");        // 인증번호 입력란
    var boxWrap = $(".mail_check_input_box");    // 인증번호 입력란 박스
    var warnMsg = $(".mail_input_box_warn");	// 이메일 입력 경고글
    
    
    // 이메일 형식 유효성 검사
    if(mailFormCheck(email)){
    	warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
    	warnMsg.css("dispaly", "inline-block");
    } else {
    	warnMsg.html("올바르지 못한 이메일 형식 입니다.");
    	warnMsg.css("display", "inline-block");
    	return false;
    }
    
    $.ajax({
        
        type:"GET",
        url:"mailCheck?email=" + email,
        success:function(data){
            
            //console.log("data : " + data);
            cehckBox.attr("disabled",false);
            boxWrap.attr("id", "mail_check_input_box_true");
            code = data;
        }
                
    });
});



/* 코드 일치 여부 확인 */
$(".mail_check_input").blur(function(){
    var inputCode = $(".mail_check_input").val();   // 입력한 코드
    var checkResult = $("#mail_check_input_box_warn"); // 결과 메시지

    if (inputCode === code) { // 코드 일치 시
        checkResult.html("인증번호가 일치합니다.");
        checkResult.removeClass("incorrect").addClass("correct");
    	mailnumCheck = true;
    } else { // 코드 불일치 시
        checkResult.html("인증번호를 다시 확인해주세요.");
        checkResult.removeClass("correct").addClass("incorrect");
        mailnumCheck = false;
    }
    
});

// 다음 주소 연동
function execution_daum_address(){

	new daum.Postcode({
		oncomplete: function (data) {
			// 팝업에서 검색 결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분
		
			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
             // 주소변수 문자열과 참고항목 문자열 합치기
                addr += extraAddr;
            
            } else {
            	 addr += ' ';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			$(".address_input_1").val(data.zonecode);
            //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
            $(".address_input_2").val(addr);
            //$("[name=memberAddr2]").val(addr);            // 대체가능
            // 커서를 상세주소 필드로 이동한다.
            $(".address_input_3").attr("readonly",false);
            $(".address_input_3").focus();
		
		}
		
	}).open();
	 
}

// 비밀번호 확인 일치 유효성 검사
$('.pwck_input').on("propertychange change keyup paste input", function () {
		
	var pw = $('.pw_input').val(); // 변수를 선언하여 비밀번호 항목과 비밀번호 확인 항목란의 입력 값으로 초기화
	var pwck = $('.pwck_input').val();
	$('.final_pwck_ck').css('display', 'none');// 추가적으로 입력이 될 때 '비밀번호 확인을 입력해주세요' 경고글을 사라지도록 함
	
	if(pw == pwck) {
		$('.pwck_input_re_1').css('display', 'blcok');
		$('.pwck_input_re_2').css('display', 'none');
		pwckcorCheck = true;
		
	} else { 
	    $('.pwck_input_re_1').css('display', 'none');
	    $('.pwck_input_re_2').css('display', 'block');
	    pwckcorCheck = false; 
	}

});


// 입력 이메일 형식 유효성 검사
function mailFormCheck(email) {
	var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	return form.test(email);
}
 

</script>


</body>



</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>