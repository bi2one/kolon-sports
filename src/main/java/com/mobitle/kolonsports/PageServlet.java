package com.mobitle.kolonsports;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.jsp.HttpJspPage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageServlet extends HttpServlet {

    public PageMapper pageMapper;

    // abstract public void _jspService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    // public void init(ServletConfig config) throws ServletException {
        // jspInit();
    // }
    
    public void service(HttpServletRequest request, HttpServletResponse response) {
        // _jspService(request, response);
    }

    public void destroy()
    {
        // jspDestroy();
    }    
}