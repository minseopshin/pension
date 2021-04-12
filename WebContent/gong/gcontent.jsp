<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.GongjiDao" %> 
<%@ page import="pension.dto.GongjiDto" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%	GongjiDao gdao = new GongjiDao();
	GongjiDto gdto = gdao.gcontent(request);	
	pageContext.setAttribute("gdto",gdto);
%>
<style>
	#third {width:1100px; height:400px; margin:auto; margin-top:100px}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<table width="700" height="300" align="center">
		<tr height="30">
			<td>조회수</td>
			<td>${gdto.readnum}</td>
			<td>작성일</td>
			<td>${gdto.writeday}</td>
		</tr>
		<tr>
			<td>제 목</td>
			<td colspan="3">${gdto.title}</td>
		</tr>
		<tr>
			<td>내 용</td>
			<td colspan="3">${gdto.content}</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<a href="glist.jsp">목록으로</a>
			</td>
		</tr>
	</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>