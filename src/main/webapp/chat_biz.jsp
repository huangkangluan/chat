
<%@ page import="java.util.LinkedHashSet" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/26
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //处理中文乱码
   request.setCharacterEncoding("UTF-8");
  String name=request.getParameter("text");
  //将登陆的用户保存到session
  session.setAttribute("name",name);
  LinkedHashSet list=(LinkedHashSet)application.getAttribute("users");
  if(list==null){
    list=new LinkedHashSet();
  }
  //request.getRemoteAddr()获取远程机器的地址
  list.add(name);
  application.setAttribute("users",list);
  response.sendRedirect("chat.jsp");
%>
