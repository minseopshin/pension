<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.BoardDao" %>
<%	BoardDao bdao = new BoardDao();
	bdao.bwrite_ok(request,session);
	
	response.sendRedirect("blist.jsp");
%>