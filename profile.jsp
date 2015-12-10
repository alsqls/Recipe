<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
    <%request.setCharacterEncoding("utf-8");%>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<link href="<%=request.getContextPath()%>/assets/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">