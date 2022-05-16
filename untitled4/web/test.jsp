<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/29
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>使用application 内置对象</title>
    <style>
        #form2 input{
            color:green;
            font-weight:bold;
        }</style>
</head>
<body bgcolor="#abcdef">
<form action="checkMessage.jsp" method="post">
    请输入姓名:<input type="text" name="name"/></br>
    请输入标题:<input type="text" name="title"/></br>
    请输入内容:
    <textarea rows="10" cols="40" name="message"></textarea>
    <br><br><br>
    <input type="submit" value="留言"/>
</form>
<br>
<form action="showMessage.jsp" method="post">
    <input type="submit" value="查看留言板"/>
</form>
</body>
</html>