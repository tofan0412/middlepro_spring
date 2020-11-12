<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="header">
	<span id="title">입사지원서 관리&nbsp;</span><span id="vertical">&nbsp;|</span>
	<span id="title">&nbsp;입사지원서 작성</span>
</div>

<h1>입&nbsp;사&nbsp;지&nbsp;원&nbsp;서</h1>
<hr>
<form name="wform" id="wform" method="post" action="${pageContext.request.contextPath }/app/insert">
	<div id="info">
		<input name="mem_id" id="memid" class="memid"
			value="<%=session.getAttribute("id")%>" readonly required> <br>
		<label>이름&nbsp;<span id='nec'>필수</span></label><input name="ap_name"
			id="name" class="name" type="text">

		<h3>최종 학력사항&nbsp;</h3>
		<label>출신교&nbsp;<span id='nec'>필수</span></label> <input
			name="deg_name" id="degname" class="degree" type="text">
		<br> <label>입학년월&nbsp;<span id='nec'>필수</span></label> <input
			name="deg_entdate" id="entdate" class="degree" type="date">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>졸업년월&nbsp;<span
			id='nec'>필수</span></label> <input name="deg_grdate" id="grdate"
			class="degree" type="date" required> <br> <label>전공&nbsp;<span
			id='nec'>필수</span></label> <input name="deg_major" id="major" class="degree"
			type="text" required> <label>평균학점&nbsp;<span id='nec'>필수</span></label>
		<input name="deg_grade" id="grade" class="degree" type="text">
		<br> 
		<strong>※고졸인 경우 전공란에 '문과' 또는 '이과'를, 학점란에 내신등급을 기입할것.</strong><br>
		<h3>자기 소개서</h3>
		자기 소개서 제목<span id='nec'>필수</span><br> <input id="title" type="text" name="ap_title">
			
		<h5>1. 간단한 자기소개를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="introduce" rows="7" cols="100"
			name="ap_introduce" maxlength="700"></textarea>
		<br>
		
		<h5>2. 지원 동기를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="motivation" rows="7" cols="100"
			name="ap_motivation" maxlength="700"></textarea>
		<br>
		
		<h5>3. 입사 후 포부를 입력하세요. <span id='nec'>필수</span></h5>
		<textarea style="resize: none;" id="plan" rows="7" cols="100"
			name="ap_plan" maxlength="700"></textarea>
		<br>
	</div>
	<div id="buttongroup">
		<input id="send" type="submit" value="제출"> 
		<input id="reset" type="reset" value="다시 작성">
	</div>
</form>
<hr>