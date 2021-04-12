<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.BoardDao" %>
<%@ page import="pension.dto.BoardDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	BoardDao bdao = new BoardDao(); 
	ArrayList<BoardDto> blist = bdao.blist(request);
	pageContext.setAttribute("blist", blist);
%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<table width="500" align="center">
		<tr>
			<td>작성자</td>
			<td>제 목</td>
			<td>조회수</td>
			<td>작성일</td>
		</tr>
		<c:forEach var="bdto" items="${blist}">
		<tr>	
			<td>${userid}</td>
			<td><a href="bcontent.jsp?id=${bdto.id}">${bdto.title}</a></td>
			<td>${bdto.readnum}</td>
			<td>${bdto.writeday }</td>
		</tr>	
		</c:forEach>
		<tr>
			<td colspan="4" align="center">
				<a href="bwrite.jsp">글쓰기</a>
			</td>
		</tr>
	</table>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>