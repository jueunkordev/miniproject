// 약관 출력
window.onload = function() {
	const http = new XMLHttpRequest();

	// 첫 번째 약관 파일 로드
	http.open("GET", "./agree/agree1.txt", false)
	http.send()
	document.getElementById("ag").innerHTML = http.response

	// 두 번째 약관 파일 로드
	http.open("GET", "./agree/agree2.txt", false)
	http.send()
	document.getElementById("ag2").innerHTML = http.response
}

// 전체 선택/해제
function check_all(z) {
	f.over14_agree.checked = z;
	f.terms_agree.checked = z;
	f.privacy_agree.checked = z;
	f.msms.checked = z;
}

// 개별 체크 → 전체 체크 상태 갱신
function check_one() {
	if (f.over14_agree.checked && f.terms_agree.checked && f.privacy_agree.checked && f.msms.checked) {
		document.getElementById("all_cb").checked = true;
	} else {
		document.getElementById("all_cb").checked = false;
	}
}

// 정규식
const tel_regp = /^01\d{8,9}$/g;
const mail_regp = /^[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,}$/i;

// 이메일 중복 체크 (통신은 나중에 구현)
function duplcheck() {
	const email = f.memail.value;
	if (!mail_regp.test(email)) {
		alert("이메일 형식이 잘못되었습니다.");
		return;
	}
	alert("사용 가능한 이메일입니다.");
	document.getElementById("emailck").value = "Y";
}

// 유효성 검사 + 가입 처리
function join_btn() {
	if (f.memail.value == "" || f.emailck.value != "Y") {
		alert("이메일 입력 후 중복체크를 하세요.");
		f.memail.focus();
	} else if (f.mpass.value == "") {
		alert("비밀번호를 입력하세요.");
		f.mpass.focus();
	} else if (f.mpass.value.length < 10) {
		alert("비밀번호는 10자 이상이어야 합니다.");
		f.mpass2.focus();
	} else if (f.mpass2.value == "") {
		alert("비밀번호 확인을 입력하세요.");
		f.mpass2.focus();
	} else if (f.mpass.value !== f.mpass2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		f.mpass2.focus();
	} else if (f.mname.value == "") {
		alert("이름을 입력하세요.");
		f.mname.focus();
	} else if (f.mtel.value == "") {
		alert("휴대폰번호를 입력하세요.");
		f.mtel.focus();
	} else if (!tel_regp.test(f.mtel.value)) {
		alert("휴대폰번호 형식이 올바르지 않습니다.");
		f.mtel.focus();
	} else if (!f.over14_agree.checked || !f.terms_agree.checked || !f.privacy_agree.checked) {
		alert("필수 약관에 모두 동의해주세요.");
	} else {
		alert("유효성 검사 통과!");
		f.submit();
	}
}
