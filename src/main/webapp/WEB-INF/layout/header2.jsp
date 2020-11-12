<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<style>
	.navbar-inverse .navbar-nav>li>a{
		color : white;
	}
	.navbar-inverse .navbar-nav>.open>a:hover{
		background-color : #779af5;
	}
	
	.navbar-inverse .navbar-nav>.open>a:hover{
		background-color : #779af5;
	}
	#search{
		width : 400px;
		height : 50px;
	}
	
	.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:focus, .navbar-inverse .navbar-nav>.open>a:hover {
		background-color : #779af5;
	}
	body{
		font-color : white;
	}
</style>
</head>
<body>
<nav class="navbar navbar-inverse ">
    <div class="collapse navbar-collapse" id="myNavbar">
<!--     <div id="search"> -->
<!--     <select name="search"><option value="">기업명</option><option value="">제목</option></select> -->
<!--     <input type="text" placeholder="검색어를 입력해주세요"><img src="../images/search.png"></div> -->
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
         <a class="dropdown-toggle" id="menu1" data-toggle="dropdown">기업분석
         <span class="caret"></span></a>
         <ul class="dropdown-menu"  aria-labelledby="menu1">
           <li><a  href="/MiddleProject/MemIntSelectAll">면접후기</a></li>
           <li><a  href="<%=request.getContextPath()%>/InterviewSelectAll">직무인터뷰</a></li>
         </ul>
       </li>
       <li class="dropdown">
         <a class="dropdown-toggle"  id="menu2"  href="<%=request.getContextPath()%>/company_view/eachrecruitlist.jsp">채용공고</a>
       </li>
       
        <li class="dropdown">
         <a class="dropdown-toggle"  id="menu2"  href="/MiddleProject/NewsSelectAll">취업뉴스</a>
       </li>
       
       <li class="dropdown">
         <a class="dropdown-toggle"  id="menu3" href="<%=request.getContextPath()%>/mem_view/qna_board_view.jsp">질문게시판</a>
       </li>
       
       <li class="dropdown">
         <a class="dropdown-toggle"  id="menu4" href="<%=request.getContextPath()%>/NoticeSelectAll">공지사항</a>
       </li>
      </ul>
    </div>
</nav>  
</body>

