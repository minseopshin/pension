<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="gwrite_ok.jsp">
		<table width="400" align="center">
			<caption><h3>공지사항 글쓰기</h3></caption>
			<tr>
				<td>제 목</td>
				<td> <input type="text" name="title" size="43"></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td> <textarea cols="40" rows="5" name="content"></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2"> <input type="submit" value="저장"> </td>
			</tr>
		</table>
	</form>
</body>
</html>