<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="application">
	<tr height="30px">
		<td>${application.ap_num }</td>
		<td>${application.userid }</td>
		<td width="300px" id="ap_title" data-ap_num="${application.ap_num }">${application.ap_title }</td>
		<td>${application.ap_date }</td>
		<td><button type="button" value="삭제">삭제</button></td>
	</tr>
</c:forEach>
$$$$$$$$



