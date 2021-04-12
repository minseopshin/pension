<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../main.css">
<title>Insert title here</title>
<script>
	function menu_over()	{
		document.getElementById("index_sub").style.visibility="visible";
	}
	function menu_out()		{
		document.getElementById("index_sub").style.visibility="hidden"
	}
</script>
</head>
<body>
	<div id="first"> 오픈기념 50% 할인이벤트를 진행중입니다. 많은 참여 부탁합니다. X</div>	<!-- 간단한 광고 -->
	<div id="second"><!-- 로고, 메뉴-->
		<ul id="index_menu">
			<li>logo</li>
			<li>펜션소개</li>
			<li>주변관광지</li>
			<li>예약관련</li>
			<li id="menu" onmouseover="menu_over()" onmouseout="menu_out()">커뮤니티
				<ul id="index_sub">
					<li onclick = "location='../gong/glist.jsp'">공지사항</li>
					<li onclick = "location='../board/blist.jsp'">게시판</li>
					<li onclick = "location='../tour/tlist.jsp'">여행후기</li>				
				</ul>
			</li>
			<li>
				<c:if test="${userid == null}">
					<a href="../login/login.jsp">로그인</a>
				</c:if>
				<c:if test="${userid != null}">
					${userid} 님	<a href="../login/logout.jsp">로그아웃</a>
				</c:if>
			</li>
		</ul>
	</div>
	<!-- 문서내용 --> <!-- 항상 top에 오는 부분 -->
