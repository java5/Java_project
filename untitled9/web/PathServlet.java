package web;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PathServlet extends HttpServlet {
    public void doGet(httpServletRequest request, HttpServletResponse response)
        throwsServletException,IOException{
        ServletContext servletContext=this.getServletContext();
        String path=servletContext.getRealPath("/");
        System.out.println(path);
        String indexPath=servletContext.getRealPath("index.jsp");
        System.out.println(indexPath);
    }

}
