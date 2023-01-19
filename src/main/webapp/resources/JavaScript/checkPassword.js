/**
 * 글 수정 시에 사용자의 비밀번호 확인
 */
var script = document.createElement('script');
script.src = 'https://code.jquery.com/jquery-latest.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);

function modifyAction() {
	var userPw = $('#password').val();
	
	var inputPw = prompt('비밀번호를 입력하세요');
	
	if (userPw == inputPw) {
		$("form").attr("action", "Modify");
		$("form").submit();
	} else {
		alert("비밀번호가 다릅니다.");
	}
}

function removeAction() {
	var userPw = $('#password').val();
	
	var inputPw = prompt('비밀번호를 입력하세요');
	
	if (userPw == inputPw) {
		$("form").attr("action", "Remove");
		$("form").attr("method", "post");
		$("form").submit();
	} else {
		alert("비밀번호가 다릅니다.");
	}
}