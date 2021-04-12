<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.BoardDao" %>
<%@ page import="pension.dto.BoardDto" %>
<%	BoardDao bdao = new BoardDao(); 
	bdao.update_ok(request);
	
	response.sendRedirect("bcontent.jsp?id="+request.getParameter("id"));
%>