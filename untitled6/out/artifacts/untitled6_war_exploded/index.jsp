<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/4/7
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>网上调查步骤之一</title>
  <meta http-equiv="description" content="questionaire">
  <meta http-equiv="content-type" conent="text/heml;charset=UTF-8">
</head>
<body>
<%@include file="top.html"%>
<form name="form1" method="post" actio="hobby.jsp">
  <p>姓名
    <input name="name" type="text" id="name" size="16">
  </p>
  <p>性别
    <input name="sex" type="radio" value="male" checked>
    男
    <input name="sex" type="radio" value="female">
    女</p>
  <p>
    <input type="submit" name="Submit" value="下一步">
    <input type="reset" name="Submit2" value="重置">
  </p>
</form>
</body>
</html>
