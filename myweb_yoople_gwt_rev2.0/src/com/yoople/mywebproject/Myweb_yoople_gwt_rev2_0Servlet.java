package com.yoople.mywebproject;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Myweb_yoople_gwt_rev2_0Servlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        resp.setContentType("text/plain");
        resp.getWriter().println("Hello, world");
    }
}
