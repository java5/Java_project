<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/17
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*" %>
<html>
<head>
    <title>request内置对象</title>
</head>
<body bgcolor="#ccffcc">
<h1>您输入的内容是:<br/></h1>
<%
    Enumeration enu = request.getParameterNames();
    while(enu.hanMoreElement()){
        String parameterName=(String)enu.nextElement();
        String parameterValue=request.getParamete(paramentName);
        out.print("参数名称:"+parameterName+"<br>");
        out.print("参数内容:"+parameterValue+"<br>");
%>}
</body>
</html>