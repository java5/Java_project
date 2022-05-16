<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/4/7
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>网上调查任务之二</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
    String sex=request.getParameter("sex");
    if(sex.equals("male"))
        sex="先生";
    else sex="女士";
    session.putValue("namesex",name+sex);
%>
<%@include file="top.html"%>
<p>
    <%=name%>
    <%=sex%>
    ,您好,请继续完成调查
</p>
<p>宁感兴趣的业余爱好</p>
<p>
    <input name="hobby" type="checkbox" id="film" value="影视">
    影视欣赏</p>
<p>
    <input name="hobby" type="checkbox" id="book" value="书">
    体育运动</p>
<p>
    <input name="hobby" type="checkbox" id="sports" value="运动">
    户外旅游</p>
<p>
    <input name="hobby" type="checkbox" id="travel" value="旅游">
    读书</p>
<p>
    <input name="hobby" type="checkbox" id="music" value="音乐">
    流星音乐</p>
</p>
<p>
    <input type="submit" name="Submit" value="下一步">
    <input type="reset" name="Reset" value="重置">
</p>
</form>
</body>
</html>
