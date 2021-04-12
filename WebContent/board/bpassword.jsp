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
	<table>
		<tr>
			<td> 비밀번호를 입력하세요 </td>
		</tr>
		<tr>
			<td> <input type="password" name="password"></td> 
		</tr>
		<tr>
			<td> <a href="bupdate.jsp?id=${bdto.id}">수정</a></td>
			<td> <a href="bdelete.jsp?id=${bdto.id}">삭제</a></td>
	</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>