
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <title></title>
<style type="text/css">
#text {
	height: 30px;
	width: 80%;
	float: left;
}
#big {
	height: 30px;
	width: 30%;
	margin-right: auto;
	margin-left: auto;
}
#sub {
	float: left;
	height: 30px;
	text-align: center;
}
</style>
</head>
<body>
<form method="post" action="chat_biz.jsp">
 <div id="big">
  <div><input type="text" name="text" id="text" placeholder="请输入用户名"></div>
  
    <div><input type="submit" name="sub" id="sub" value="进入聊天室">
  </div>
  
  </div>
</form>
</body>
</html>
