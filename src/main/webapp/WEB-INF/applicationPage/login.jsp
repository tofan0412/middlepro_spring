<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/signin.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/js.cookie-2.2.1.min.js"></script>
<script type="text/javascript">
	function getCookieValue(cookieName) {
		var cookies = document.cookie.split("; "); // 브라우저에 저장되어 있는 쿠키 리스트를 변수로 저장
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i].split("="); // 이 경우 쿠키의 이름과 쿠키의 값을 갖는 배열이 생성된다.
			// cookie 배열은 [쿠키의 이름 , 해당 쿠키의 값]와 같은 형태를 갖는다. 
			if (cookie[0] == cookieName) {
				return cookie[1]; // 리턴으로 하면 바로 끝난다.
			} else {
				return ""; // 해당 쿠키명이 존재하지 않는 경우에는 ""를 반환한다.
			}
		}
	}
	function setCookie(cookieName, cookieValue, expires) {
		var today = new Date();
		// 현재 날짜에서 미래로 + expires만큼 한 날짜 구하기
		today.setDate(today.getDate() + expires);
		document.cookie = cookieName + "=" + cookieValue + "; path=/; expires="
				+ today.toGMTString() + ";";
		console.log(document.cookie);
	}

	// 해당 쿠키의 expires 속성을 과거 날짜로 변경
	function deleteCookie(cookieName) {
		setCookie(cookieName, "", -1);
	}

	$(function() {
		cookieValue = Cookies.get("REMEMBERME");
		if (cookieValue == "Y") {
			$("input[type=email]").val(Cookies.get("USERNM"));
			$("input:checkbox").prop("checked", true);
			// attr("checked", "checked")
			// "input[type=checkbox]" 와 같이 해도 된다.
		}

		$("button[type=submit]").on('click', function() {
			console.log("button_click"); // 클릭 여부를 콘솔창에 전시한다.
			// 아이디 기억 체크박스가 체크되어 있으면
			if ($("input:checkbox").is(":checked") == true) {
				// is 대신 prop도 사용 가능하다.
				Cookies.set("REMEMBERME", "Y");
				Cookies.set("USERNM", $("input[type=email]").val());
			}
			// 아이디 기억 체크박스가 체크되어 있지 않으면
			if ($("input:checkbox").is(":checked") == false) {
				Cookies.remove("REMEMBERME");
				Cookies.remove("USERNM");
			}
			$("form").submit();
		})
	})
</script>
<div class="container">
	<form class="form-signin" action="${pageContext.request.contextPath}/app/login" method="POST">
		<h2 class="form-signin-heading">로그인</h2>
		<label for="inputEmail" class="sr-only">User Id</label> <input
			type="text" id="userid" name="userid" class="form-control"
			placeholder="Email address" required autofocus value="brown">

		<label for="inputPassword" class="sr-only">password</label> <input
			type="password" id="pass" name="pass" class="form-control"
			placeholder="Password" required value="brownPass">
		<div class="checkbox">
			<label> 
			<input type="checkbox" value="remember-me">rememberMe
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>
</div>