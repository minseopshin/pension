<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../main.css">
<style>
	#third {width:1100px; height:400px; margin:auto}
</style>
<script>
	function check()	{
		// return true => 전송가능, return false => 전송불가
		// 이름 (입력유무), 아이디(길이:4자이상), 비번(길이:4자이상, 2개의 폼이 같은지)
		// 폼태그 값 가져오기 => document.pkc.input이름.value
		// document.pkc.name.value.length == 0
		var my = document.pkc;
		if(my.name.value == "")	{
			alert("이름을 적으세요");
			my.name.focus();
			return false;
		}
		else if(my.userid.value.length < 4)	{
			alert("아이디는 4자이상 적으세요");
			return false;
		}
		else if (my.pwd.value != my.pwd2.value)	{
			alert("비밀번호의 값이 서로 다릅니다.");
			my.pwd.value=""
			my.pwd2.value=""
			return false;
		}
		else 	{
			return true;
		}
	}
</script>
<c:import url="../top.jsp"/>
<div id="third">
<!-- 모든 문서의 내용 시작 -->
	<!-- 회원가입 폼 만들기 -->
	
	<form name="pkc" method="post" action="member_ok.jsp" onsubmit="return check()">
	<table width="350" align="center" class="member_table">
	<caption> <h3>회원가입</h3> </caption>
		<tr align="center">
			<td>이름</td>
			<td> <input type="text" name="name"></td>
		</tr>
		<tr align="center">
			<td>전화번호</td>
			<td> <input type="text" name="phone"></td>
		</tr>
		<tr align="center">
			<td>아이디</td>
			<td> <input type="text" name="userid"></td>
		</tr>
		<tr align="center">
			<td>비밀번호</td>
			<td> <input type="password" name="pwd"></td>
		</tr>
		<tr align="center">
			<td>비밀번호확인</td>
			<td> <input type="password" name="pwd2"></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="회원가입"> </td>
		</tr>
	</table>
	</form>
<!-- 모든문서의 내용 끝  -->
</div>
<c:import url="../bottom.jsp"/>
	