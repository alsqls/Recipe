<%@ page contentType="text/html;charset=utf-8" import="java.sql.*,java.util.*,ch12.*" %>
<%
    String mem_id = (String)session.getAttribute("idKey");
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="RecipeDAO" class="ch12.RecipeDAO"/>
<jsp:useBean id="RecipeDTO" class="ch12.RecipeDTO"/>
<%
   /*
   String num = request.getParameter("number");
   int numInt = Integer.parseInt(num);
   */
   
   
   int numInt = 3;      // 페이지 번호만 바꾸면 된다.
   RecipeDTO = RecipeDAO.getRecipe(numInt);
%>
    
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <table id="noBorder">
                <tr>
                    <td class="col-md-12">
                        <img src="<%=RecipeDTO.getImgpath()%>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                       <h1 class="cookName"><%=RecipeDTO.getCookname()%></h1> 
                    </td>
                </tr>
                <tr>
                    <td><h3>재료</h3></td>
                </tr>
            </table>
        </div>
    </div>
</div>