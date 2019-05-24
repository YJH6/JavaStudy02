<%@ page import="org.dao.Update" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = (String)session.getAttribute("username");
    String password = request.getParameter("password");
    Update dao = new Update();
    int result = dao.update(username,password);
    if(result==1){
        out.print("修改成功");
    } else {
        out.print(result);
    }
%>
</form>
</body>
</html>
