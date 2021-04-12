<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pension.dao.BoardDao" %>
<%@ page import="pension.dto.BoardDto" %>
<%	String id = request.getParameter("id");
	BoardDao bdao = new BoardDao(); 
	bdao.readnum(request);
	
	response.sendRedirect("bcontent.jsp?id="+id);
%>