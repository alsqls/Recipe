<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="ch12.*"%>
<%
  request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="myBoard" class="ch12.BoardBean" />
<jsp:setProperty name="myBoard" property="*" />
<jsp:useBean id="myDB" class="ch12.BoardMgr" />
<% 
  myDB.insertBoard(myBoard);
  response.sendRedirect("List.jsp"); //강제로 페이지 보이게 함
 
%>
