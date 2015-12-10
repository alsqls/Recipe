<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head><title></title></head>
<body>
<%
   //DataBase 연동
   request.setCharacterEncoding("utf-8");
 
   Class.forName("org.gjt.mm.mysql.Driver");
   
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   
   
   int counter = 0;
   try{
      
    String id = request.getParameter("id");
    String inputPasswd = request.getParameter("passwd");
    String name = request.getParameter("name");
    String e_mail = request.getParameter("email");
   
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
   
   stmt = conn.createStatement();
 int count=0;
   
	/*
   PreparedStatement pstmt = null;
	String sql = "insert into member values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,passwd);
	pstmt.setString(3,name);
	pstmt.setString(4,e_mail);
	pstmt.executeUpdate();
    */
	
	stmt.executeUpdate("update member set passwd='"+inputPasswd+"', name='"+name+"', e_mail='"+e_mail+"' where id='"+id+"'");
    //rs = stmt.executeQuery("SELECT * FROM member where id='"+id+"'");
 
%>
        <script>
            alert("수정이 완료 되었습니다.");
	       location.href="profile.jsp";
        </script>
<%
 
//데이터베이스 연동시 필요한 예외처리...
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
</body>
</html>
        