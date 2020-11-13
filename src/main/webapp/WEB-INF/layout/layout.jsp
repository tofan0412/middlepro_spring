<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/app.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
</script>
<title>==입사 지원서 관리==</title>
</head>
<body>
   <div id="box">
      <tiles:insertAttribute name="header1"/>
      <tiles:insertAttribute name="header2"/>
      <br>
      <div id="menubar">
         <table border="1">
            <tr>
               <td><a href="${pageContext.request.contextPath }/app/write">입사지원서 작성</a></td>
               <td><a href="${pageContext.request.contextPath }/app/listView">입사지원서 조회 및 수정</a></td>
               <td><a href="#">입사 지원서 결과 조회</a></td>
               <td><a href="${pageContext.request.contextPath }/app/deleteView">입사지원서 삭제</a></td>
            </tr>
         </table>
      </div>
      <br>
      <div id="content">
      <tiles:insertAttribute name="content"></tiles:insertAttribute>
      </div>
   </div>
   <tiles:insertAttribute name="footer"/>
</body>
</html>