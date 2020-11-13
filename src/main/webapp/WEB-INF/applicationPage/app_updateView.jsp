<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1>입&nbsp;사&nbsp;지&nbsp;원&nbsp;서</h1>
<form name="wform" id="wform" method="post" action="${pageContext.request.contextPath }/app/update">
	<div id="info">
		<input type="text" name="userid" id="userid" value="${session_id }" readonly required hidden="hidden"> 
		<input type="text" name="ap_num" id="ap_num" value="${application.ap_num}" readonly required hidden="hidden">
		<br>
		<label>이름&nbsp;<span id='nec'>필수</span></label>
		<br>
		<input name="ap_name" id="name" type="text" value="${application.ap_name}">
		
		<h3>자기 소개서</h3>
		자기 소개서 제목<span id='nec'>&nbsp;필수</span><br> 
		<input id="title" type="text" name="ap_title" value="${application.ap_title }">
			
		<h5>1. 간단한 자기소개를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="introduce" rows="7" cols="100"
			name="ap_introduce" maxlength="700">${application.ap_introduce }</textarea>
		<br>
		
		<h5>2. 지원 동기를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="motivation" rows="7" cols="100"
			name="ap_motivation" maxlength="700">${application.ap_motivation }</textarea>
		<br>
		
		<h5>3. 입사 후 포부를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="plan" rows="7" cols="100"
			name="ap_plan" maxlength="700">${application.ap_plan }</textarea>
		<br>
		<div id="buttongroup">
		<input id="send" type="submit" value="제출"> 
		<input id="reset" type="reset" value="다시 작성">
	</div>
	</div>
</form>
$$$$$$$$