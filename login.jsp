<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>
<%
    if(mem_id != null){
%>
    <script>
        location.href = "./index.jsp";
    </script>
<%
   }
%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Material Login Form</title>
    
    
    <link rel="stylesheet" href="css/reset.css">

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>

    
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Login</h1>
</div>
<div class="rerun"><a href="">Rerun Pen</a></div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form method="post" action="./loginProc.jsp">
      <div class="input-container">
        <input type="text" id="Username" required="required" name="id"/>
        <label for="Username">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Password" required="required" name="password"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit"><span>Go</span></button>
      </div>
    </form>
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Register
    <form method="post" action="./Register.jsp">
      <div class="close"></div>
    </h1>
      <div class="input-container">
        <input type="text" id="Username" required="required" name="id"/>
        <label for="Username">Id</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Password" required="required" name="password"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Repeat Password" required="required" name="password"/>
        <label for="Repeat Password">Repeat Password</label>
        <div class="bar"></div>
      </div>
        <div class="input-container">
        <input type="text" id="Username" required="required" name="name"/>
        <label for="Username">Name</label>
        <div class="bar"></div>
        </div>
        <div class="input-container">
        <input type="text" id="Username" required="required" name="e_mail"/>
        <label for="Username">E_mail</label>
        <div class="bar"></div>
      </div>
         <div class="button-container">
          <button type="submit"><span>Next</span></button> <!-- 회원정보 보여주는 페이지로 이동 -->
      </div>
    </form>
  </div>
</div>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
