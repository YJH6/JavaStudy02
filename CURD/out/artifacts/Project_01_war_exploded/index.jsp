<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<form action="check.jsp"
      method="post"
      accept-charset="UTF-8"
>
  用户名:<br>
  <input type="text" name="username" autofocus placeholder="username" required>
  <br>
  密码:<br>
  <input type="password" name="password" placeholder="password" required>
  <br><br>
  <input type="submit" value="提交">
</form>
</body>
</html>