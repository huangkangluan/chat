
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/26
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //处理中文乱码
  request.setCharacterEncoding("UTF-8");
  //先获取application已有的数据
  String msg=(String)application.getAttribute("msg");
  //msg如果为空的话，就新建一个
  if(msg==null){
    msg=new String();
  }
  //获取用户名
  String username= (String) session.getAttribute("name");
  //获取聊天内容
  String xinxi=request.getParameter("msg");
  String talk=username+"：<style='border: 1px solid #CCC;'>"+xinxi+"</style><br/>";
  //累加到全部的聊天记录当中
  msg=msg+talk;
  //把新的聊天记录存在全局作用域中
  application.setAttribute("msg",msg);
  response.sendRedirect("chat.jsp");
%>
