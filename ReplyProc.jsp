<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="ch12.*"%>
<%
  request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="myBoard" class="ch12.BoardBean" />
<jsp:setProperty name="myBoard" property="*" />
<jsp:useBean id="myDB" class="ch12.BoardMgr" />

<%  
    int nowPage = Integer.parseInt(request.getParameter("page"));
	int num = Integer.parseInt(request.getParameter("num"));
	BoardBean tempBoard = myDB.getBoard(num);
    int pos = tempBoard.getPos();
	int depth = tempBoard.getDepth();
	
	myBoard.setPos(pos); 
	myBoard.setDepth(depth); 
	myDB.replyupMyBoard(myBoard);
	myDB.replyMyBoard(myBoard);

	response.sendRedirect("List.jsp?page=" + nowPage); 
%> 