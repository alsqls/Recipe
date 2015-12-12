<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="ch12.*,java.util.*,java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = (String)session.getAttribute("memID");
    String mem_id = (String)session.getAttribute("idKey");
	session.setMaxInactiveInterval(1000);
%>
<jsp:useBean id="updateBoard" class="ch12.BoardBean"/>
  <jsp:setProperty name="updateBoard" property="*" />
<jsp:useBean id="myDB" class="ch12.BoardMgr1" />
<%
	int nowPage = Integer.parseInt(request.getParameter("page"));
    int num = Integer.parseInt(request.getParameter("num"));
	BoardBean tempBoard = myDB.getBoard(num);
	String inputPass = updateBoard.getPass(); 
	String storePass = tempBoard.getPass(); 
   
   if(mem_id.equals("admin")){
   myDB.updateBoard(updateBoard);
		response.sendRedirect("Listadmin.jsp?page=" + nowPage); 
   
   }
%> 
    
	