<%@ page import="java.util.LinkedHashSet" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/27
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
<style type="text/css">
#big {
  width: 50%;
  border: 1px solid #F00;
  margin-right: auto;
  margin-left: auto;
  }
#left{
    float: left;
    height: 500px;
    width: 70%;
    border: 1px solid #CCC;
    overflow: scroll;
  }
#right{
  float: right;
  height: 500px;
  width: 28%;
  border: 1px solid #CCC;
  text-align: center;
  overflow: scroll
}
#xia{
  height: 96px;
  width: 100%;
  clear: both;
}
.send {
  position: relative;
  width: 150px;
  height: 35px;
  border-radius: 5px;
  margin: 30px auto 0;
  background-color: #FFFFFF;
  border: 1px solid #CCC;
}
.send.arrow {
  position:absolute;
  top:5px;
  right:-16px;
  width:0;
  height:0;
  font-size:0;
  border:solid 8px;
  border-color:#4D4948 #4D4948 #4D4948 #F8C301;
}

</style>
<script src="js/jquery-3.0.0.js"></script>
  <script>
    //初始化加载
    $(function(){
      window.setInterval("getdata()",500);
    })
    //获取信息
    function getdata(){
      $.post("chat_show.jsp",function(data){
        $("#left").html(data);
      });
    }
    //发送数据
    function send(){
      $.post("xiaoxi.jsp", $("#form").serialize(),function(){
        $("#msg").val("");
      });
    }
    function text(){
      if(event.keyCode==13){
           send();
      }
    }
  </script>
</head>
<body>
<div id="big">
  <div id="left">
    <div class="send">
    <%
      String str= (String) application.getAttribute("msg");
      out.print(str);
    %>
    </div>
  </div>
  <div id="right">
    <%
      LinkedHashSet list=(LinkedHashSet)application.getAttribute("users");
      for (Object obj:list){
        out.print(obj+"<br/>");
      }
    %>
  </div>
  <div id="xia">
    <form action="javascript:void(0)" method="post" id="form">
    请输入聊天信息<input type="text" name="msg" placeholder="请输入要发送的消息" onkeypress="text()">
    <input type="button" name="but" value="发送" onclick="send()">
    </form>
  </div>
</div>
</body>
</html>
