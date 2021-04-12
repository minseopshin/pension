<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="pension.dao.BoardDao" %>
<%@ page import="pension.dto.BoardDto" %>
<%	BoardDao bdao = new BoardDao(); 
	BoardDto bdto = bdao.update(request);
	pageContext.setAttribute("bdto",bdto);
%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
		<table width="400" align="center">
			<caption><h3>게시글</h3></caption>
			<tr>
				<td>조회수</td>
				<td>${bdto.readnum}</td>
				<td>작성일</td>
				<td>${bdto.writeday}</td>
			<tr>
				<td>제 목</td>
				<td>${bdto.title}</td>
			</tr>
			<tr>
				<td>내 용</td>
				<td>${bdto.content}</td>
			</tr>
			<tr align="center">
				<td><a href="blist.jsp">목록으로</a></td>
			<tr>
			<c:if test="${userid eq bdto.userid}">
				<tr>
					<td><a href="bpassword.jsp">수정하기</a></td>
					<td><a href="bdelete.jsp?id=${bdto.id}">삭제하기</a></td>
				</tr>	
			</c:if>
			</tr>
		</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>