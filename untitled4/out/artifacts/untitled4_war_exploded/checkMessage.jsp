<%@ page import="java.util.Vector" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/29
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内置对象-check</title>
</head>
<body bgcolor="abcdef">
<%!
        Vector<String> v=new Vector<String>();
        int i=0;%>
<%
    String datetime=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());//获取系统时间
%>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String title = request.getParameter("message");
%>
<%
    if(name==null || "".equals(name.trim())){
        name="网友"+(int)(Math.random()*100000+10000);
    }
    if(title==null||"".equals(title.trim())){
        title="无";
    }
%>
<%
    i++;
    String str="第"+"<span class=span0>"+i+"</span>"+"楼   "
            +".<span class=span1>留言人:</span>"+name+".span class=span2>标题:</span>"+title
            +".<span class=span3>内容:</span><br>   "+message
            +".<span class=span4>时间:</span> "+datetime+".<hr>";

    v.add(str);
    application.setAttribute("message",v);
%>
留言成功.
<a herf="inputMessage.jsp">返回留言板</a>
</body>
</html>
