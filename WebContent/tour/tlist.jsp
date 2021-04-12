<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.TourDao" %>
<%@ page import="pension.dto.TourDto" %>
<%@	page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	TourDao tdao = new TourDao();
	ArrayList<TourDto> tlist = tdao.tlist();
	pageContext.setAttribute("tlist",tlist);
%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<table width="500" align="center">
		<caption><h3> 여행 후기 </h3></caption>
		<tr>
			<td>작성자</td>
			<td>제 목</td>
			<td>조회수</td>
			<td>작성일</td>
		</tr>
		<c:forEach var="tdto" items="${tlist}">
		<tr>
			<td>${tdto.userid}</td>
			<td><a href="tcontent.jsp?id=${tdto.id}">${tdto.title}</a></td>
			<td>${tdto.readnum}</td>
			<td>${tdto.writeday}</td>
		</tr>
		</c:forEach>
		<tr>
			<td align="center"> <a href="twrite.jsp"> 글쓰기 </a>
		</td>
	</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>