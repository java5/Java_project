<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/29
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内置对象</title>
</head>
<body>
    <h3>现在的时间是:</h3>
<hr/>
<%=new java.util.Data()%>
<%
    response.setHeader("refresh",1);
%>
<hr/>
</body>
</html>
