import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Properties;

@WebServlet(name = "ContextServletTest",urlPatterns="/ContextServletTest")
public class ContextServletTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        ServletContext context=this.getServletContext();
        InputStream stream=context.getResourceAsStream("/WEB-INF/classes/jdbc.properties");
        Properties properties=new Properties();
        properties.load(stream);
        String dbName=properties.getProperty("dbName");
        String userName=properties.getProperty("userName");
        String userpasswd=properties.getProperty("userPasswd");
        String url = properties.getProperty("url");
        url = url+dbName+"?user="+userName+"&password="+userpasswd;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url);
            Statement statement = conn.createStatement();
            String sql = "select*from student ORDER BY stuclass DESC,number ASC ";
            ResultSet rs = statement.executeQuery(sql);
            out.println("<table border=1>");
            out.println("<th colspan=4 atyle='font-size:x-large;alignment:center'>学生信息表</th>");
            out.println("<tr style='text-again:center'>");
            out.println("<td> 学号</td> <td>姓名</td> <td>出生日期</td> <td>所在班级</td> </tr>");
            while (rs.next()) {
                out.println("<tr style = 'text-align:center'>");
                out.println("<td>" + rs.getString(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString("brithday") + "</td>");
                out.println("<td>" + rs.getString("stuclass") + "</td>");
                out.println("</tr>");
            }
            out.println("</table></body>");
        }catch (Exception e){
            e.printStackTrace();
        }
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
