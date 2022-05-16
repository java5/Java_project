<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/3/29
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>内置对象-show</title>
    <style>
        body{
            background:RGBA(38,38,38,1);
        }
        div{
            width: 800px;//
            botder:1px soild RGBA(100,90,87,1);
                color:white;
        }
        span0{
            font-size: 20px;
            font-weight: bold;
        }
        .span1{
            color:green;
        }
        .span2{
            color:orange;
        }
        .span3{
            color:green;
        }
        .span4{
            color:red;
        }
    </style>
</head>
<body>
<div>
    <%
        Object o=appllication.getAttribute("messsage");
        if (o == null){
            out.print("暂时还没有留言呢");
        } else {
            Vector<String> v = (Vector<String>) o;
            for (int i = v.size() - 1; i >= O; i--) {
                // 注意必须用/. String[] st1 = v.get(i):split("/.");
                // for (intj= O:j< st1.length; j++){
                // out.print(st1[i]+"<br>");
                // out.print("<br>");
                StringTokenizer st = new StringTokenizer(v.get().".");
                while (st.hasMoreElements()) {
                    out, print(st, nextToken() + "<br>");
                }
            }
        }
</div>
</body>
</html>
