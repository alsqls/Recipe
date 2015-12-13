<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="ch12.*,java.util.*,java.sql.*"%>
<jsp:useBean id="myDB" class="ch12.BoardMgr"/>
<%
	int nowPage = Integer.parseInt(request.getParameter("page"));
	int num = Integer.parseInt(request.getParameter("num"));
    BoardBean tempBoard = myDB.getBoard(num);
	String subject = tempBoard.getSubject();
	String content = tempBoard.getContent(); 

	String memberId = (String)session.getAttribute("memID");
    String mem_id = (String)session.getAttribute("idKey");
	session.setMaxInactiveInterval(6000);
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	String name = request.getParameter("name");
	String e_mail = request.getParameter("email");
	
   if(mem_id == null){
%>
    <script>
        alert("로그인을 먼저하세요.");
        location.href = "./login.jsp";
    </script>
<%
	}
  request.setCharacterEncoding("utf-8");
   Class.forName("org.gjt.mm.mysql.Driver");
   
   Connection conn = null;
   
  
   Statement stmt = null;
   ResultSet rs = null;
    try{
      
   //커넥션 생성
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
   
   // 커넥션을 통해 질의를 전송하기 위한 객체(stmt)
   // stmt = conn.createStatement();
   // 객체(stmt)를 통해서 질의를 수행할 메소드를 사용
   // 질의수행 결과는 ResultSet으로 받는다.

 stmt = conn.createStatement();
 int count=0;
  rs = stmt.executeQuery("SELECT * FROM MEMBER WHERE id='"+mem_id+"'");
 
		
		
		 if(rs!=null){
			while(rs.next()){
			id = rs.getString("id");
            passwd = rs.getString("passwd");
            name = rs.getString("name");
            e_mail = rs.getString("e_mail");
			}
		 }
		
	}catch(SQLException sqlException){
      System.out.println("sql exception");
   }catch(Exception exception){
      System.out.println("exception");
   }finally{
      if( rs != null ) 
         try{ rs.close(); } 
         catch(SQLException ex) {}
      if( stmt != null ) 
         try { stmt.close(); } 
         catch(SQLException ex) {}
      if( conn != null ) 
         try{ conn.close(); }
         catch(Exception ex){}
   }
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
     <td align=left width=80%><input type=text name=name value="<%=name%>" size=10 maxlength=30 readonly=readonly></td>
    
    <tr>
     <td width=20%>E-Mail</td>
     <td align=left width=80%><input type=text name=email value="<%=e_mail%>" size=30 maxlength=30 readonly=readonly></td>

    </tr>
    <tr>
     <td width=20%>홈페이지</td>
     <td align=left width=80%><input type=text name=homepage size=40 maxlength=30></td>
    </tr>
    <tr>
     <td width=20%>제 목</td>
     <td align=left width=80%><input type=text name=subject size=50 value="답변 : <%=subject%>" maxlength=50></td> 
    </tr>
	<tr>
     <td  width=20%>내 용</td>
        <td  align=left width=80%>
	  <textarea name=content rows=12 cols=50>
      <%=content %>

========답변 글을 쓰세요.=======
      </textarea></td>
    </tr>
    <tr>
     <td width=20%>비밀 번호</td> 
     <td align=left width=80%><input type=password name=pass size=15 maxlength=15></td> 
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
