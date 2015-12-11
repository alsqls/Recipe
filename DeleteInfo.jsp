<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*" %>
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
	String mem_num1 = request.getParameter("mem_num1");
	String mem_num2 = request.getParameter("mem_num2");
	String e_mail = request.getParameter("e_mail");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	String memberId = (String)session.getAttribute("memID");
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
		stmt = conn.createStatement();
		
		
		//rs = stmt.executeQuery("SELECT * FROM member where id='"+id+"'");
		
		 if(rs!=null){
			 
			 while(rs.next()){
				id = rs.getString("id");
			 }
		 }
		//stmt.executeUpdate("delete member set passwd='"+passwd+"', name='"+name+"',mem_num1='"+mem_num1+"',mem_num2='"+mem_num2+"',e_mail='"+e_mail+"',phone='"+phone+"',zipcode='"+zipcode+"',address='"+address+"',job='"+job+"' where id = '"+id+"';");
		 stmt.executeUpdate("delete from member where id = '"+memberId+"';");
		 session.invalidate();
		 %>
		 
	<script>
		alert("탈퇴가 완료되었습니다.");
		 location.href="SessionMemberLogIn.jsp";
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
