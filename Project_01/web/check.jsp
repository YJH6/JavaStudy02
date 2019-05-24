<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.dao.LoginDao" %>
<%@ page import="org.dao.LoginDao" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    LoginDao dao = new LoginDao();
    int result = dao.login(username,password);
    if(result>0){
        out.print("登录成功!");
    }else if(result==0){
        out.print("用户名或密码有误!");
    } else {
        out.print(result);
    }
%>
<%
    if(result>0) {
        out.print("<form action = \"update.jsp\" method = \"post\" accept - charset = \"UTF-8\" ");
        out.print("<input name = \"username\" value=\""+username+"\">");
        out.print("<input name = \"username\" value=\""+password+"\">");
        out.print("注销:<br >");
        out.print("<input type = \"submit\" value = \"注销\" >");
        out.print("<br>");
    }
%></body>
</html>
