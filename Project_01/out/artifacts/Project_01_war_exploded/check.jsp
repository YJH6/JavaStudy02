<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.dao.LoginDao" %>
<%@ page import="org.dao.LoginDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    LoginDao dao = new LoginDao();
    int result = dao.login(username,password);
    if(result>0){
        out.print("登录成功!");
    }else if(result==0){
        out.print("用户名或密码有误!");
    }else if(result==-1){
        out.print("1");
    }else if (result==-2){
        out.print("2");
    }else {
        out.print("3");
    }%>
</body>
</html>
