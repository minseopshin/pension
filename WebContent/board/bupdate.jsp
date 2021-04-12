<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="pension.dao.BoardDao" %>
<%@ page import="pension.dto.BoardDto" %>
<%	BoardDao bdao = new BoardDao(); 
	BoardDto bdto = bdao.update(request);
	pageContext.setAttribute("bdto", bdto);
%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<form method="post" action="bupdate_ok.jsp">
	<input type="hidden" name="id" value="${bdto.id}">
		<table width="400" align="center">
			<caption><h3>글 수정</h3></caption>
			<tr>
				<td>제 목</td>
				<td> <input type="text" name="title" size="43" value="${bdto.title}"></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td> <textarea cols="40" rows="5" name="content">${bdto.content}</textarea></td>
			</tr>
			<tr align="center">
				<td> <input type="submit" value="저장"> </td>
				
			</tr>
		</table>
	</form>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>