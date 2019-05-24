<%@ page import="org.dao.Retrieve" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/25
  Time: 2:45
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
    Retrieve dao = new Retrieve();
    String password = dao.retrieve(username);
    out.print(password);
%>
</body>
</html>
