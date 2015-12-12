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
<jsp:useBean id="myDB" class="ch12.BoardMgr" />
<%
	int nowPage = Integer.parseInt(request.getParameter("page"));
    int num = Integer.parseInt(request.getParameter("num"));
	BoardBean tempBoard = myDB.getBoard(num);
	String inputPass = updateBoard.getPass(); 
	String storePass = tempBoard.getPass(); 
	if(!mem_id.equals("admin")){
		if (!inputPass.equals(storePass)) {
%>
<script language="javascript">
	var memberId = "<%=memberId%>";
	if(memberId != "admin"){
		alert("입력하신 비밀번호가 올바르지 않습니다. 다시 확인해주세요.");
		history.go(-1);
	}
</script>
<% 
		}else { //storePass가 inputPass와 같을때 
			myDB.updateBoard(updateBoard);
			response.sendRedirect("List.jsp?page=" + nowPage); 
		}
	} else{	// admin이면
		myDB.updateBoard(updateBoard);
		response.sendRedirect("List.jsp?page=" + nowPage); 
	}
%>