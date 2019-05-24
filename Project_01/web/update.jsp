<%@ page import="org.dao.Update" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Update dao = new Update();
    int result = dao.update(username,password);
    if(result==0){
        out.print("删除成功!");
    } else {
        out.print("系统错误!");
    }%>
</body>
</html>
