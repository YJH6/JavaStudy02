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
            session.setAttribute("username",username);
            out.print("<br><form action=\"update.jsp\" method=\"post\" accept-charset=\"UTF-8\" >");
            out.print("新的密码:");
            out.print("<input type=\"password\" name=\"password\" placeholder=\"password\" required>");
            out.print("<br>");
            out.print("<input type = \"submit\" value = \"修改密码\" >");
            out.print("<br>");
            out.print("</form>");
        }
    %>

<%
    if(result>0) {
        //session.setAttribute("username",username);
        session.setAttribute("password",password);
        out.print("<form action=\"delete.jsp\" method=\"post\" accept-charset=\"UTF-8\" >");
        out.print("注销:<br >");
        out.print("<input type = \"submit\" value = \"注销\" >");
        out.print("<br>");
        out.print("</form>");
    }
%>
</body>
</html>
