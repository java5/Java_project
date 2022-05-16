<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/29
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%
    out.println("学习使用out对象:<br>");
    int Buffer=out.getBufferSize();
    int Available = out.getRemaining();
%>
输出缓冲区的大小:<%=Buffer %><br>
缓冲区剩余空间大小:<%=Available %><br>
</body>
</html>
