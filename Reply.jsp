<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="ch12.*"%>
<jsp:useBean id="myDB" class="ch12.BoardMgr"/>
<%
	int nowPage = Integer.parseInt(request.getParameter("page"));
	int num = Integer.parseInt(request.getParameter("num"));
    BoardBean tempBoard = myDB.getBoard(num);
	String subject = tempBoard.getSubject();
	String content = tempBoard.getContent(); 
%>
<html>
<head> <title>JSPBoard</title>
<link rel='stylesheet' id='all-css-0' href='./css/cssStyle.css' type='text/css' media='all' />
</head>
<body>
<center>
<br><br>
 <table width=460 cellspacing=0 cellpadding=3>
  <tr>
   <td bgcolor=#CCCC00 height=21 align=center>답변하기</td>
  </tr>
</table>
<form name=post method=post action="ReplyProc.jsp" >
<table width=527 cellspacing=0 cellpadding=7>
 <tr>
  <td align=center>
   <table border=0>
    <tr>
     <td width=20%>성 명</td>
     <td width=80%>
	  <input type=text name=name size=30 maxlength=20></td>
    </tr>
    <tr>
     <td width=20%>E-Mail</td>
     <td width=80%>
	  <input type=text name=email size=30 maxlength=30></td>
    </tr>
    <tr>
     <td width=20%>홈페이지</td>
     <td width=80%>
	  <input type=text name=homepage size=40 maxlength=30></td>
    </tr>
    <tr>
     <td width=20%>제 목</td>
     <td width=80%>
	  <input type=text name=subject size=50 value="답변 : <%=subject%>" maxlength=50></td> 
    </tr>
	<tr>
     <td width=20%>내 용</td>
     <td width=80%>
	  <textarea name=content rows=12 cols=50>
      <%=content %>

========답변 글을 쓰세요.=======
      </textarea></td>
    </tr>
    <tr>
     <td width=20%>비밀 번호</td> 
     <td width=80%>
	  <input type=password name=pass size=15 maxlength=15></td> 
    </tr>
	<tr> 
     <td colspan=2>
         <center>
	  <input type=submit value="답변등록" >
      <input type=reset value="다시쓰기">
      <input type=button value="뒤로" onClick="history.go(-1)">
             </center>
             </td>
    </tr> 
   </table>
  </td>
 </tr>
 <input type=hidden name=ip value="<%=request.getRemoteAddr()%>" > <!-- 글쓴 사람의 ip주소-->
 <input type=hidden name=page value="<%=nowPage%>">
 <input type=hidden name=num value="<%=num%>">
</table>
</form> 
</center>
</body>
</html>
