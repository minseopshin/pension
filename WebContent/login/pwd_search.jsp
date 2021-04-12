<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
<c:if test="${imsi_p == null}">
<%pageContext.setAttribute("chk",request.getParameter("chk")); %>
	<form method="post" action="pwd_search_ok.jsp">
		<table width="310" align="center" class="pwd_table">
			<caption><h3>비밀번호 찾기</h3></caption>
			<tr>
				<td><input type="text" name="userid" class="text_form" placeholder="아이디"></td>
			</tr>
			<tr>
				<td><input type="text" name="name" class="text_form" placeholder="이름"></td>
			</tr>
			<tr>
				<td><input type="text" name="phone" class="text_form" placeholder="전화번호"></td>
			</tr>
			<c:if test="${chk == 1}">
			<tr>
				<td style="color:red"> 아이디,이름,전화번호를 확인해주세요 </td>
			</tr>
			</c:if>
			<tr>
				<td> <input type="submit" class="submit_form" value="비밀번호 찾기"></td>
			</tr>				
		</table>
	</form>
</c:if>
<c:if test="${imsi_p != null }">
	<table align="center">
	<tr>
		<td>
			<p align="center"> 비밀번호는 ${imsi_p} 입니다.</p>
		</td>
	</tr>
	<tr>
		<td> 
			<a href="pwd_search.jsp">비밀번호 찾기</a> 
			<a href="login.jsp">로그인하기</a>
		</td>
	</tr>
	</table>
</c:if>
<% session.invalidate(); %>
<!-- 모든문서의 내용 끝  -->
</div>
<c:import url="../bottom.jsp"/>