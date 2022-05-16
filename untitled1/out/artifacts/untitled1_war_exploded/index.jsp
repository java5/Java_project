<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/12
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>表达式实例</title>
  </head>
  <%!
    String url="expressionHref.jsp";
  %>
  <body>
  <a href="</%=url%>">点击跳转</a>

    <form action="<%=url%>">
      <input type="submit" value="点击跳转"/>
</from>
  </body>
</html>
