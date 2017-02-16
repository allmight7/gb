<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setAttribute("PAGE_TITLE", "예매페이지");
    request.setAttribute("CONTENT_PAGE", "../book/contents/book_list.jsp");
%>
<jsp:forward page="../template/template.jsp" />