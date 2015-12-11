<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<link href="./assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./assets/input/css/normalize.css">
<link rel="stylesheet" href="./assets/input/css/style.css">
<%
   request.setCharacterEncoding("utf-8");
 
   Class.forName("org.gjt.mm.mysql.Driver");
   
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   
   int counter = 0;
   try{
    String id="";
    String passwd="";
    String name="";
    String e_mail="";

    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
    stmt = conn.createStatement();
    int count=0;
	
    rs = stmt.executeQuery("SELECT * FROM member where id='"+mem_id+"'");
   
    if(rs!=null){
        while(rs.next()){
            id = rs.getString("id");
            passwd = rs.getString("passwd");
            name = rs.getString("name");
            e_mail = rs.getString("e_mail");
        }// end while
    }// end if
   
   
   
%>
    <title>회원 정보</title>
</head>
<body>
	<div class="site-wrapper">
		<div class="container">
			<form class="form-signup" name="f" method="post" action="./memberUpdate.jsp">
		          <center><h2 style="color: #555" class="form-signup-heading">회원 정보</h2></center>
				<div class="row">
					<input type="text" name="id" id="fancy-text" readonly="readonly" value="<%=mem_id%>"/> <label for="fancy-text">아이디</label>
				</div>

				<div class="row">
					<input type="text" name="passwd" id="fancy-text" value="<%=passwd%>"/> <label for="fancy-text">패스워드</label>
				</div>
				
				<div class="row">
					<input type="text" name="name" id="fancy-text" value="<%=name%>"/> <label for="fancy-text">이름</label>
				</div>
				
				<div class="row">
					<input type="text" name="email" id="fancy-text" value="<%=e_mail%>"/> <label for="fancy-text">이메일</label>
				</div>
				<center>
				<button	onclick="inputCheck();" type="button">수정</button>
				<button	onclick="cancel();" type="button">취소</button>
                 <button type="button" onclick="deleteCheck();">탈퇴</button>
                </center>
			</form>
		</div>
	</div>
	</body>
</html>
    
<%  
}catch(SQLException sqlException){
      System.out.println(".sql exception");
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
<script type="text/javascript">
	function inputCheck() {
		if (f.id.value == "") {
			alert("아이디를 입력해 주세요.");
			f.id.focus();
			return;
		}
		if (f.passwd.value == "") {
			alert("패스워드를 입력해 주세요.");
			f.passwd.focus();
			return;
		}
		if (f.name.value == "") {
			alert("이름을 입력해 주세요.");
			f.name.focus();
			return;
		}
		if (f.email.value == "") {
			alert("이메일을 입력해 주세요.");
			f.email.focus();
			return;
		}
        var result = window.confirm("정말 회원 정보를 수정하시겠습니까?");
		if (!result) {//true
			return;
		}
		document.f.submit();
	}

	function cancel() {
		//확인창 띄워서 예 누르면 닫기
		var result = window.confirm("회원 정보 페이지에서 나가시겠습니까?");
		if (result) {//true
            location.href = "./index.jsp";
		}
	}
    function deleteCheck() {
		//확인창 띄워서 예 누르면 닫기
		var result = window.confirm("정말 회원 탈퇴를 하시겠습니까?");
		if (result) {//true
            location.href = "./DeleteInfo.jsp";
		}
	}
</script>
