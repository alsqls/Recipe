<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="ch12.*,java.util.*,java.sql.*"%>

<jsp:useBean id="myDB" class="ch12.BoardMgr1" />
<%
	String memberId = (String)session.getAttribute("memID");
    String mem_id = (String)session.getAttribute("idKey");
	session.setMaxInactiveInterval(300);
	int pos=0;
	int nextdepth=0;
	 int num;
   int nowPage;
   String inPass=""; 
   String DBPass="";
   
   nowPage = Integer.parseInt(request.getParameter("page"));
   num = Integer.parseInt(request.getParameter("num"));
   BoardBean tempBoard = myDB.getBoard(num);



	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	String name2 = request.getParameter("name");
	String e_mail = request.getParameter("email");

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
  rs = stmt.executeQuery ("SELECT * FROM MEMBER WHERE id='"+memberId+"'");
 
		 if (rs!=null ){
			while(rs.next()){
			id = rs.getString ("id");
            passwd = rs.getString ("passwd");
            name2 = rs.getString ("name");
            e_mail = rs.getString ("e_mail");
			}
		 }
   
if(mem_id.equals("admin")){
	myDB.deleteBoard(num);
	  response.sendRedirect("Listadmin.jsp?page=" + nowPage);
	}
rs = stmt.executeQuery("SELECT * FROM boardadmin WHERE num='"+(num+1)+"'");


if(rs!=null ) {
			while(rs.next()){
			nextdepth = Integer.parseInt(rs.getString("depth"));
			}
}

//rs = stmt.executeQuery("SELECT * FROM boardadmin WHERE pos='"+(pos+1)+"'");
//if(rs!=null){
//			while(rs.next()){
//			nextdepth = Integer.parseInt(rs.getString("depth"));
//			}
//		 }
		
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
<%
  
	

  if((request.getParameter("pass")) !=null){
    inPass = request.getParameter("pass"); 
    DBPass = tempBoard.getPass(); 
  if(!(inPass.equals(DBPass))) {

%>
<script>
	
	alert("입력하신 비밀번호가 올바르지 않습니다. 다시 확인해주세요.");
	history.go(-1);
</script>
<%
	}
   else{
	if(nextdepth>=1){
%>
		<script>
			alert("답변글이 달려있습니다. 다시 확인해주세요.");
			history.go(-1);
		</script>
<%
	}
	  myDB.deleteBoard(num);
	  response.sendRedirect("Listadmin.jsp?page=" + nowPage);
		
	}
  }
%>
<html>
<link href="./css/cssStyle.css" rel="stylesheet" type="text/css">
<script language="javascript">
	function check() {

		if (document.form.pass.value == "") {
		alert("패스워드를 입력하세요.");
		form.pass.focus();
		return false;
		}
		else if("<%=nextdepth%>"=="1"){
			alert("답변글이 달려있습니다. 다시 확인해주세요.");
			history.go(-1);
			return false;
		}
else if("<%=nextdepth%>"=="2"){
			alert("답변글이 달려있습니다. 다시 확인해주세요.");
			history.go(-1);
			return false;
		}else if("<%=nextdepth%>"=="3"){
			alert("답변글이 달려있습니다. 다시 확인해주세요.");
			history.go(-1);
			return false;
		}
		document.form.submit();
	}
</script>
</head>
<body>
<center>
<br><br>
<table width=50% cellspacing=0 cellpadding=3>
 <tr>
  <td bgcolor=#dddddd height=21 align=center>
      사용자의 비밀번호를 입력해 주세요.</td>
 </tr>
</table>
<table width=70% cellspacing=0 cellpadding=2>
<form name=form method=post action="Deleteadmin.jsp" >
 <tr>
  <td align=center>
   <table align=center border=0 width=91%>
    <tr> 
     <td align=center>  
	  <input type=password name="pass" size=17 maxlength=15>
	 </td> 
    </tr>
     <td align=center>
	  <input type=button value="삭제완료" onClick="check()"> 
      <input type=reset value="다시쓰기"> 
      <input type=button value="뒤로" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
 <input type=hidden name=page value="<%=nowPage%>">
 <input type=hidden name=num value="<%=num%>">
</form> 
</table>
</center>
</body>
</html>
