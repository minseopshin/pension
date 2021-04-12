<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.GongjiDao" %>
<%@ page import="pension.dto.GongjiDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	GongjiDao gdao = new GongjiDao(); 
	ArrayList<GongjiDto> glist = gdao.glist();
	pageContext.setAttribute("glist",glist);
%>    
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
	<div id="third">
	<table width="700" align="center">
		<caption><h3>공지 사항</h3></caption>
		<tr>
			<td>작성자</td>
			<td>제 목</td>
			<td>조회수</td>
			<td>작성일</td>
			<c:if test="${userid == 'admin'}">
			<td>삭제</td>
			</c:if>
		</tr>
		<c:forEach var="gdto" items="${glist}">
		<tr>
			<td>관리자</td>
			<td><a href="gcontent.jsp?id=${gdto.id}">${gdto.title}</a></td>
			<td>${gdto.readnum}</td>
			<td>${gdto.writeday}</td>
			<c:if test="${userid == 'admin'}">
			<td><a href="delete.jsp?id=${gdto.id}">click</a></td>
			</c:if>
		</tr>
		</c:forEach>
		<c:if test="${userid == 'admin'}">
		<tr>
			<td colspan="4" align="center">
				<a href="gwrite.jsp"> 글쓰기</a></td>
		</tr>
		</c:if>
	</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>