<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*" %>
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
   
    //String passwd2 = request.getParameter("password");
    //String name = request.getParameter("name");
    //String e_mail = request.getParameter("email");
   
   int counter = 0;
   try{
      
    String id = request.getParameter("id");
    String inputPasswd = request.getParameter("password");
    String passwd="";
    String name;
    String e_mail;
   //커넥션 생성
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","multi");
   
   stmt = conn.createStatement();
 int count=0;
 //counter=stmt.executeUpdate("insert into member(id,passwd,name,e_mail) values('"+id+"','"+passwd+"','"+name+"','"+e_mail+"')");
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
	
	//stmt.executeUpdate("update member set passwd='44442222' where id='Korea1'");	
      rs = stmt.executeQuery("SELECT * FROM member where id='"+id+"'");
 //
%>

        
   
    
    <%
      if(rs!=null){
        while(rs.next()){
            id = rs.getString("id");
            passwd = rs.getString("passwd");
            name = rs.getString("name");
            e_mail = rs.getString("e_mail");
        }
       }
       
       if(!passwd.equals(inputPasswd)){
%>
        <script>
            alert("비밀번호가 틀렸습니다.");
            window.history.back();
        </script>
<% 
       }else{
        session.setAttribute("idKey",id);
%>
        <script>
            alert("로그인 되었습니다.");
	       location.href="index.jsp";
        </script>
<%
   }
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
        