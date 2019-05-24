<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.dao.Delete" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = (String)session.getAttribute("username");
    String password = (String)session.getAttribute("password");
    Delete dao = new Delete();
    int result = dao.delete(username,password);
    if(result==0){
        out.print("删除成功!");
    } else {
        out.print(result);
    }
%>
</body>
</html>
