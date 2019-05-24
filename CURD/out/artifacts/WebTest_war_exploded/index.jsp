<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/23
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<form action="localhost:8080"
      method="get"
      target="_blank"
      accept-charset="UTF-8"

>
  用户名:<br>
  <input type="text" name="username" autofocus placeholder="username" required>
  <br>
  密码:<br>
  <input type="password" name="password" placeholder="password" required>
  <br><br>
  你的性别为:
  <select name = "gender" required>
    <option value="2" >秘密</option>>
    <option value="1">男</option>
    <option value="0">女</option>
  </select><br>
  你的年龄为:
  <input type="number" name="age" min="0"max="150">
  <br>
  <input type="submit" value="提交">
</form>
</body>
</html>