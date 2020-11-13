<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.navelogo {
	/*  	border: 1px solid black; */
	height: 65px;
}

.navbar-inverse {
	border: #779af5;
	background-color: #779af5;
}

#gsj {
	width: 192px;
	height: 40px;
}

.navbar-nav>li>a {
	padding-top: 25px;
}
</style>

<nav class="navelogo">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand"
				href="${pageContext.request.contextPath }/app/mainView"> <img
				id="gsj" src="${pageContext.request.contextPath }/images/logo.png">
			</a>
		</div>
		<c:choose>
			<c:when test="${session_id ne null }">
				<ul class="nav navbar-nav navbar-right">
					<li id="mem"><a class="dropdown-toggle" id="menu"
						data-toggle="dropdown" aria-expanded="false"><span
							class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;${session_id }
							<span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="menu1">
							<li><a
								href="${pageContext.request.contextPath }/member/mypage.jsp">개인정보관리</a></li>
							<li><a href="${pageContext.request.contextPath }/MemSearch"></a></li>
							<li><a
								href="${pageContext.request.contextPath }/app/appMain.jsp">이력서관리</a></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath }/LogoutServlet"><span
							class="glyphicon glyphicon-user"></span> 로그아웃</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul class="nav navbar-nav navbar-right">
					<li><a
						href="${pageContext.request.contextPath }/app/loginView"><span
							class="glyphicon glyphicon-log-in"></span>Login</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
	</div>
</nav>