<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/4/14
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>
<% String id=request.getParameter("stuid");%>
<% String stuName=request.getParameter("stuname");%>
<%String stuBirthday=request.getParameter("stubirthday");%>
<% String stuClass=request.getParameter("stuclass");%>
<head>
    <title>条件查询</title>
        <%! ResultSet rs;%>
        <%
            String dbName = "studb";
            String userName = "root";
            String userPasswd ="123456";
            String url ="jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password="+ userPasswd;
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url);
            Statement statement = conn.createStatement();
            String sql = "INSERT into student VALUES('"+id+"',"+stuName+"','"+stuBirthday+"',"+stuClass+"')";
            int result= statement.executeUpdate(sql);
            if(result>0)
                out.print(" <script type='text/javascript'>alert('添加成功');</script>");
            else
                out.print(" <script type='text/javascript'>alert('添加失败');</script>");
            sql = "select* from student";
            rs=statement.executeQuery(sql):
        %>
</head>
<html>
<body>
<table border=“1”>
    <th colspan＝"4" style＝" font-size: x-large; alignment: center">学生信息表</th><tr style=“text-align:'center'>
    <td></td>学号>/td>
    <td>姓名</td>
    <td>出生日期</td>
    <td>所在班级</td>
    </tr>
        <% while (rs.next()){%><tr style=“text-align:center”><td><%=rs.getString(1) %></td><td><%= rs.getString(2) %> </td><td><%= rs.getString(“birthday”)%></td><td><%= rs.getString(“stuclass”)%></td>
</tr>
        <%}%>
        <%
rs.close();
preparedStatement.close();
conn.close();
%>

