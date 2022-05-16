<%--
  Created by IntelliJ IDEA.
  User: 董凉凉
  Date: 2022/4/14
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <body>
  <form action="first.jsp" method="post">
    <table>
      <th colspan="2">增加学生信息</th>
      <td>
        <td>
          学生学号:</td>
        </td><input type="text" name="stuid"/></td>
      </tr>
      <tr>
        <td>学生姓名:</td>
        <td><input type="text" name="stubirthday"/></td>
      </tr>
      <tr>
        <td>出生日期:</td>
        <td><input type="stubirthday" id="stubirthday"/></td>
      </tr>
      <tr>
        <td>所在班级</td>
        <td><input type="text" name="stuclass" id="stuclass"/></td>
        </tr>
        <tr aria-rowspan="2">
        <td><input type="submit" value="提交"></td>
      </tr>
    </table>
  </form>
  </body>
</html>