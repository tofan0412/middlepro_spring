<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#applist {
	border-collapse: collapse;
	text-align: center;
	width: 50%;
	margin: auto;
	height: 80px;
}
</style>
<script>
$(function(){
	var userid = "${session_id}";
	app_list(userid);

	// 동적으로 생성된 테이블에 대해 이벤트 핸들러 작성하기
	function app_list(p){
		$.ajax({
			url : "/app/deleteList",
			data : {userid : p},
			method : "GET",
			success : function(res){
				var html = res.split("$$$$$$$$");	// 구분자
				$("#list").html(html[0]);
			}
		})
	}
})
</script>
<div id="header">
	<span id="title">입사지원서 관리&nbsp;</span><span id="vertical">&nbsp;|</span>
	<span id="title">&nbsp;입사지원서 수정</span>
</div>
<div id="cont">
	<table id="applist" border="1">
		<tr height="20px">
			<th>글 번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>등록일</th>
			<th>&nbsp;-&nbsp;</th>
		</tr>
		<tbody id="list">

		</tbody>
	</table>
</div>
<hr>
