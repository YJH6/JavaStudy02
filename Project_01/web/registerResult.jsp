<%@ page import="org.dao.Register" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/24
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Register dao = new Register();
    int result = dao.register(username,password);
    if(result>0){
        out.print("注册成功!");
    } else {
        out.print("系统错误!");
    }
%>

</body>
</html>
