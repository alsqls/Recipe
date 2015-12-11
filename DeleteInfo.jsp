<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*" %>
<jsp:useBean id="myDB" class="ch12.MemberMgr" />
<%
	request.setCharacterEncoding("utf-8");
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	int counter =0;
	String id = request.getParameter("id");
	String passwd = request.getParameter("password"); 
	String name = request.getParameter("name");
	String e_mail = request.getParameter("e_mail");
    
	String memberId = (String)session.getAttribute("idKey");
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
		stmt = conn.createStatement();
        stmt.executeUpdate("delete from member where id='"+memberId+"'");
   /*
   boolean check = myDB.deleteMember(id,passwd);
   if(check==true) session.invalidate();
   
   
   if(!id.equals("admin"))
		myDB.deleteMember(id,passwd);
   
		 if(rs!=null){
			 
			 while(rs.next()){
				id = rs.getString("id");
			 }
		 }
   */
		 
   
		 session.invalidate();
   
   
    %>
		 
	<script>
		alert("탈퇴가 완료되었습니다.");
		 location.href="./index.jsp";
	</script>
<%
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
