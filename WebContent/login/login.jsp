<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<!-- 로그인 폼 생성 -->
	<form method="post" action="login_ok.jsp">
	<table width="310" align="center" class="login_table">
	<caption><h3>로그인</h3></caption>
		<tr>
			<td> <input type="text" class="text_form" name="userid" placeholder="아이디" autocomplete="False"></td>
		</tr>
		<tr>
			<td> <input type="password" class="pwd_form" name="pwd" placeholder="비밀번호"></td>
		</tr>
		<tr>
			<td> <input type="submit" class="submit_form" value="로그인"></td>
		</tr>
		<tr>
			<td align="center">
				<a href="userid_search.jsp">아이디찾기</a>&nbsp;
				<a href="pwd_search.jsp">비밀번호 찾기</a>&nbsp;
				<a href="member.jsp">회원가입</a>
			</td>
		</tr>
	</table>
	</form>
<!-- 모든문서의 내용 끝  -->
</div>
<c:import url="../bottom.jsp"/>
