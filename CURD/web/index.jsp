<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
</head>
<body>
<form action="check.jsp" method="post" accept-charset="UTF-8">
  用户名:<br>
  <input type="text" name="username" autofocus placeholder="username" required>
  <br>
  密码:<br>
  <input type="password" name="password" placeholder="password" required>
  <br>
  <input type="submit" value="登录">
</form>
<form action="retrieve.jsp">
  <input type="submit" value="找回密码"><br>
</form>
如果你想修改密码或注销账号,请先登录
<form action="register.jsp">
  如果你还没有账号的话,请先注册
  <input type="submit" value="注册"><br>
</form>

</body>
</html>