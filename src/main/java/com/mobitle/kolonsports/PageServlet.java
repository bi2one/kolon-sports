package com.mobitle.kolonsports;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class PageServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws ServletException {
        String nextJSP = "/page01.jsp";
        // RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        // dispatcher.forward(request, response);
    }
}