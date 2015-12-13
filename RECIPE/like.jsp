<%@ page contentType="text/html;charset=utf-8" import="java.sql.*,java.util.*,ch12.*" %>
<%request.setCharacterEncoding("utf-8");%>
<%
    String mem_id = (String)session.getAttribute("idKey");
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="RecipeDAO" class="ch12.RecipeDAO"/>
<jsp:useBean id="RecipeDTO" class="ch12.RecipeDTO"/>
<jsp:useBean id="LikedDAO" class="ch12.LikedDAO"/>
<jsp:useBean id="LikedDTO" class="ch12.LikedDTO"/>
<%
   String number = request.getParameter("num");
   LikedDAO.like(number,mem_id);
   int n = Integer.parseInt(number);
   RecipeDTO = RecipeDAO.upRate(n);
   
%>
<script>
    location.href = "./recipeDetail.jsp?num="+"<%=number%>";
</script>