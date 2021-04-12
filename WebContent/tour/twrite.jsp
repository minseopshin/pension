<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<form method="post" action="twrite_ok.jsp" enctype="multipart/form-data">
	<table width="400" align="center">
		<caption><h3>여행 후기 글쓰기</h3></caption>
		<tr>
			<td>제목</td>
			<td> <input type="text" name="title"> </td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="6" cols="40" name="content"></textarea></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td><input type="file" name="fname"></td>
		</tr>
		<tr>
			<td><button type="submit">저장</button></td>
		</tr>
	</table>
	</form>
<!-- 모든문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>