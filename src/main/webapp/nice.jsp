<%@page contentType="text/html; charset=utf-8" %>
<%@page import="com.mobitle.kolonsports.Test"%>
<%
Test test = new Test();
%>

<%= test.getMessage() %>
<% out.println("hellohel"); %>
